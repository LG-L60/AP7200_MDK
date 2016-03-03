#include "mali_kernel_common.h"
#include "mali_osk.h"
#include "platform_pmm.h"
#include "mach/mt_gpufreq.h"
#include <asm/atomic.h>

#if defined(CONFIG_MALI400_PROFILING)
#include "mali_osk_profiling.h"
#endif

static int bPoweroff;

/// #define __POWER_CLK_CTRL_SYNC__
/// For MFG sub-system clock control API
#include <mach/mt_clkmgr.h>

static unsigned int current_sample_utilization = 0;

static DEFINE_SPINLOCK(mali_pwr_lock);

#define mfg_pwr_lock(flags) \
do { \
    spin_lock_irqsave(&mali_pwr_lock, flags); \
} while(0)

#define mfg_pwr_unlock(flags) \
do { \
    spin_unlock_irqrestore(&mali_pwr_lock, flags); \
} while(0)


void mali_pmm_init(void)
{
    MALI_DEBUG_PRINT(1, ("%s\n", __FUNCTION__));
    atomic_set((atomic_t *)&bPoweroff, 1);
    mali_platform_power_mode_change(MALI_POWER_MODE_ON);
}

void mali_pmm_deinit(void)
{
    MALI_DEBUG_PRINT(1, ("%s\n", __FUNCTION__));

    mali_platform_power_mode_change(MALI_POWER_MODE_DEEP_SLEEP);
}


/* this function will be called periodically with sampling period 200ms~1000ms */
void mali_pmm_utilization_handler(unsigned int utilization)
{
    current_sample_utilization = utilization;
    MALI_DEBUG_PRINT(4, ("%s GPU utilization=%d\n", __FUNCTION__, utilization));
}


unsigned long gpu_get_current_utilization(void)
{
    return (current_sample_utilization * 100)/256;
}



void g3d_power_domain_control(int bpower_on)
{
   if (bpower_on)
   {
      MALI_DEBUG_PRINT(2,("enable_subsys \n"));
      enable_subsys(SYS_MFG, "G3D_MFG");
   }
   else
   {
      MALI_DEBUG_PRINT(2,("disable_subsys_force \n"));
      disable_subsys_force(SYS_MFG, "G3D_MFG");
   }
}



int mali_platform_power_mode_change(mali_power_mode power_mode)
{
   unsigned long flags;
   switch (power_mode)
   {
      case MALI_POWER_MODE_ON:
         MALI_DEBUG_PRINT(3, ("Mali platform: Got MALI_POWER_MODE_ON event, %s\n",
                              atomic_read((atomic_t *)&bPoweroff) ? "powering on" : "already on"));

         if (atomic_read((atomic_t *)&bPoweroff) == 1)
         {
            MALI_DEBUG_PRINT(2,("[+]MFG enable_clock \n"));
            mfg_pwr_lock(flags);
            if (!clock_is_on(MT_CG_MFG_PDN_BG3D_SW_CG))
            {
               enable_clock(MT_CG_MFG_PDN_BG3D_SW_CG, "G3D_DRV");
               /// enable WHPLL and set the GPU freq. to 500MHz
               if(get_gpu_level() != GPU_LEVEL_0){
                   clkmux_sel(MT_CLKMUX_MFG_MUX_SEL, MT_CG_GPU_500P5M_EN, "G3D_DRV");
               }
            }
            mfg_pwr_unlock(flags);
            MALI_DEBUG_PRINT(2,("[-]MFG enable_clock \n"));

#if defined(CONFIG_MALI400_PROFILING)
            _mali_osk_profiling_add_event(MALI_PROFILING_EVENT_TYPE_SINGLE |
                  MALI_PROFILING_EVENT_CHANNEL_GPU |
                  MALI_PROFILING_EVENT_REASON_SINGLE_GPU_FREQ_VOLT_CHANGE, 500,
                  1200/1000, 0, 0, 0);

#endif
            atomic_set((atomic_t *)&bPoweroff, 0);
         }
         break;
      case MALI_POWER_MODE_LIGHT_SLEEP:
      case MALI_POWER_MODE_DEEP_SLEEP:
         MALI_DEBUG_PRINT(1, ("Mali platform: Got %s event, %s\n", power_mode ==
                  MALI_POWER_MODE_LIGHT_SLEEP ?  "MALI_POWER_MODE_LIGHT_SLEEP" :
                  "MALI_POWER_MODE_DEEP_SLEEP",  atomic_read((atomic_t *)&bPoweroff) ? "already off" : "powering off"));

         if (atomic_read((atomic_t *)&bPoweroff) == 0)
         {
            MALI_DEBUG_PRINT(2,("[+]MFG disable_clock \n"));
            mfg_pwr_lock(flags);
            if (clock_is_on(MT_CG_MFG_PDN_BG3D_SW_CG))
            {
               disable_clock(MT_CG_MFG_PDN_BG3D_SW_CG, "G3D_DRV");
            }
            mfg_pwr_unlock(flags);
            MALI_DEBUG_PRINT(2,("[-]MFG disable_clock \n"));

#if defined(CONFIG_MALI400_PROFILING)
            _mali_osk_profiling_add_event(MALI_PROFILING_EVENT_TYPE_SINGLE |
                  MALI_PROFILING_EVENT_CHANNEL_GPU |
                  MALI_PROFILING_EVENT_REASON_SINGLE_GPU_FREQ_VOLT_CHANGE, 0, 0, 0, 0, 0);
#endif
            atomic_set((atomic_t *)&bPoweroff, 1);
         }

         break;
   }
}

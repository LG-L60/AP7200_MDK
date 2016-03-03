/*****************************************************************************
 *
 * Filename:
 * ---------
 *   camera_sensor_para.h
 *
 * Project:
 * --------
 *   DUMA
 *
 * Description:
 * ------------
 *   Header file of Sensor tuning parameters that should be generated by CCT
 *
 *
 * Author:
 * -------
 *
 *============================================================================
 *             HISTORY
 * Below this line, this part is controlled by CC/CQ. DO NOT MODIFY!!
 *------------------------------------------------------------------------------
 * $Revision:$
 * $Modtime:$
 * $Log:$
 *
 * 05 25 2010 sean.cheng
 * [ALPS00001357][Meta]CameraTool 
 * .
 * Add MT9T113 YUV sensor driver support
 *
 * Mar 4 2010 mtk70508
 * [DUMA00154792] Sensor driver
 * 
 *
 * Feb 24 2010 mtk01118
 * [DUMA00025869] [Camera][YUV I/F & Query feature] check in camera code
 * 
 *
 * Apr 7 2009 mtk02204
 * [DUMA00004012] [Camera] Restructure and rename camera related custom folders and folder name of came
 * 
 *
 * Feb 24 2009 mtk02204
 * [DUMA00001084] First Check in of MT6516 multimedia drivers
 * 
 *
 *------------------------------------------------------------------------------
 * Upper this line, this part is controlled by CC/CQ. DO NOT MODIFY!!
 *============================================================================
 ****************************************************************************/
/* SENSOR FULL SIZE */
#ifndef __CAMERA_SENSOR_PARA_H
#define __CAMERA_SENSOR_PARA_H

#include "tvp5150_reg.h"

#if 0
#define CAMERA_SENSOR_REG_DEFAULT_VALUE  \
		/* ARRAY: SENSOR.reg[11] */\
		{\
			/* STRUCT: SENSOR.reg[0] */\
			{\
				/* SENSOR.reg[0].addr */ 0x00000304, /* SENSOR.reg[0].para */ 0x00000000\
			},\
			/* STRUCT: SENSOR.reg[1] */\
			{\
				/* SENSOR.reg[1].addr */ 0x00000305, /* SENSOR.reg[1].para */ 0x0000000D\
			},\
			/* STRUCT: SENSOR.reg[2] */\
			{\
				/* SENSOR.reg[2].addr */ 0x00000306, /* SENSOR.reg[2].para */ 0x00000000\
			},\
			/* STRUCT: SENSOR.reg[3] */\
			{\
				/* SENSOR.reg[3].addr */ 0x00000307, /* SENSOR.reg[3].para */ 0x000000C0\
			},\
			/* STRUCT: SENSOR.reg[4] */\
			{\
				/* SENSOR.reg[4].addr */ 0x00000300, /* SENSOR.reg[4].para */ 0x00000000\
			},\
			/* STRUCT: SENSOR.reg[5] */\
			{\
				/* SENSOR.reg[5].addr */ 0x00000301, /* SENSOR.reg[5].para */ 0x00000004\
			},\
			/* STRUCT: SENSOR.reg[6] */\
			{\
				/* SENSOR.reg[6].addr */ 0x0000030A, /* SENSOR.reg[6].para */ 0x00000000\
			},\
			/* STRUCT: SENSOR.reg[7] */\
			{\
				/* SENSOR.reg[7].addr */ 0x0000030B, /* SENSOR.reg[7].para */ 0x00000002\
			},\
			/* STRUCT: SENSOR.reg[8] */\
			{\
				/* SENSOR.reg[8].addr */ 0x00000308, /* SENSOR.reg[8].para */ 0x00000000\
			},\
			/* STRUCT: SENSOR.reg[9] */\
			{\
				/* SENSOR.reg[9].addr */ 0x00000309, /* SENSOR.reg[9].para */ 0x00000008\
			},\
			/* STRUCT: SENSOR.reg[10] */\
			{\
				/* SENSOR.reg[10].addr */ 0xFFFFFFFF, /* SENSOR.reg[10].para */ 0x00000001\
			}\
		}
#endif
#define CAMERA_SENSOR_REG_DEFAULT_VALUE  \
{\
    { /* 0x00 */\
        TVP5150_VD_IN_SRC_SEL_1,0x00\
    },\
    { /* 0x01 */\
        TVP5150_ANAL_CHL_CTL,0x15\
    },\
    { /* 0x02 */\
        TVP5150_OP_MODE_CTL,0x00\
    },\
    { /* 0x03 */\
        TVP5150_MISC_CTL,0x01\
    },\
    { /* 0x06 */\
        TVP5150_COLOR_KIL_THSH_CTL,0x10\
    },\
    { /* 0x07 */\
        TVP5150_LUMA_PROC_CTL_1,0x60\
    },\
    { /* 0x08 */\
        TVP5150_LUMA_PROC_CTL_2,0x00\
    },\
    { /* 0x09 */\
        TVP5150_BRIGHT_CTL,0x80\
    },\
    { /* 0x0a */\
        TVP5150_SATURATION_CTL,0x80\
    },\
    { /* 0x0b */\
        TVP5150_HUE_CTL,0x00\
    },\
    { /* 0x0c */\
        TVP5150_CONTRAST_CTL,0x80\
    },\
    { /* 0x0d */\
        TVP5150_DATA_RATE_SEL,0x47\
    },\
    { /* 0x0e */\
        TVP5150_LUMA_PROC_CTL_3,0x00\
    },\
    { /* 0x0f */\
        TVP5150_CONF_SHARED_PIN,0x08\
    },\
    { /* 0x11 */\
        TVP5150_ACT_VD_CROP_ST_MSB,0x00\
    },\
    { /* 0x12 */\
        TVP5150_ACT_VD_CROP_ST_LSB,0x00\
    },\
    { /* 0x13 */\
        TVP5150_ACT_VD_CROP_STP_MSB,0x00\
    },\
    { /* 0x14 */\
        TVP5150_ACT_VD_CROP_STP_LSB,0x00\
    },\
    { /* 0x15 */\
        TVP5150_GENLOCK,0x01\
    },\
    { /* 0x16 */\
        TVP5150_HORIZ_SYNC_START,0x80\
    },\
    { /* 0x18 */\
        TVP5150_VERT_BLANKING_START,0x00\
    },\
    { /* 0x19 */\
        TVP5150_VERT_BLANKING_STOP,0x00\
    },\
    { /* 0x1a */\
        TVP5150_CHROMA_PROC_CTL_1,0x0c\
    },\
    { /* 0x1b */\
        TVP5150_CHROMA_PROC_CTL_2,0x14\
    },\
    { /* 0x1c */\
        TVP5150_INT_RESET_REG_B,0x00\
    },\
    { /* 0x1d */\
        TVP5150_INT_ENABLE_REG_B,0x00\
    },\
    { /* 0x1e */\
        TVP5150_INTT_CONFIG_REG_B,0x00\
    },\
    { /* 0x28 */\
        TVP5150_VIDEO_STD,0x00\
    },\
    { /* 0x2e */\
        TVP5150_MACROVISION_ON_CTR,0x0f\
    },\
    { /* 0x2f */\
        TVP5150_MACROVISION_OFF_CTR,0x01\
    },\
    { /* 0xbb */\
        TVP5150_TELETEXT_FIL_ENA,0x00\
    },\
    { /* 0xc0 */\
        TVP5150_INT_STATUS_REG_A,0x00\
    },\
    { /* 0xc1 */\
        TVP5150_INT_ENABLE_REG_A,0x00\
    },\
    { /* 0xc2 */\
        TVP5150_INT_CONF,0x04\
    },\
    { /* 0xc8 */\
        TVP5150_FIFO_INT_THRESHOLD,0x80\
    },\
    { /* 0xc9 */\
        TVP5150_FIFO_RESET,0x00\
    },\
    { /* 0xca */\
        TVP5150_LINE_NUMBER_INT,0x00\
    },\
    { /* 0xcb */\
        TVP5150_PIX_ALIGN_REG_LOW,0x4e\
    },\
    { /* 0xcc */\
        TVP5150_PIX_ALIGN_REG_HIGH,0x00\
    },\
    { /* 0xcd */\
        TVP5150_FIFO_OUT_CTRL,0x01\
    },\
    { /* 0xcf */\
        TVP5150_FULL_FIELD_ENA,0x00\
    },\
    { /* 0xd0 */\
        TVP5150_LINE_MODE_INI,0x00\
    },\
    { /* 0xfc */\
        TVP5150_FULL_FIELD_MODE_REG,0x7f\
    },\
    { /* end of data */\
        0xff,0xff\
    }\
}

#define CAMERA_SENSOR_CCT_DEFAULT_VALUE {{ 0xFFFFFFFF, 0x08 } ,{ 0x0209, 0x0008 } ,{ 0x0207, 0x0008 } ,{ 0x020D, 0x0008 } ,{ 0x020B, 0x0008 }}
#endif /* __CAMERA_SENSOR_PARA_H */

/*
 * Generated by MTK SP Drv_CodeGen Version 03.13.0  for MT6572_NP. Copyright MediaTek Inc. (C) 2013.
 * Sat Jan 23 16:31:08 2016
 * Do Not Modify the File.
 */

#ifndef _CUST_KPD_H_
#define _CUST_KPD_H_
#include <linux/input.h>
#include <cust_eint.h>

#define KPD_YES		1
#define KPD_NO		0

/* available keys (Linux keycodes) */
#define KEY_CALL	KEY_SEND
#define KEY_ENDCALL	KEY_END
#undef KEY_OK
#define KEY_OK		KEY_REPLY	/* DPAD_CENTER */
#define KEY_FOCUS	KEY_HP
#define KEY_AT		KEY_EMAIL
#define KEY_POUND	228	//KEY_KBDILLUMTOGGLE
#define KEY_STAR	227	//KEY_SWITCHVIDEOMODE
#define KEY_DEL 	KEY_BACKSPACE
#define KEY_SYM		KEY_COMPOSE
/* KEY_HOME */
/* KEY_BACK */
/* KEY_VOLUMEDOWN */
/* KEY_VOLUMEUP */
/* KEY_MUTE */
/* KEY_MENU */
/* KEY_UP */
/* KEY_DOWN */
/* KEY_LEFT */
/* KEY_RIGHT */
/* KEY_CAMERA */
/* KEY_POWER */
/* KEY_TAB */
/* KEY_ENTER */
/* KEY_LEFTSHIFT */
/* KEY_COMMA */
/* KEY_DOT */		/* PERIOD */
/* KEY_SLASH */
/* KEY_LEFTALT */
/* KEY_RIGHTALT */
/* KEY_SPACE */
/* KEY_SEARCH */
/* KEY_0 ~ KEY_9 */
/* KEY_A ~ KEY_Z */

/*
 * Power key's HW keycodes are 8, 17, 26, 35, 44, 53, 62, 71.  Only [8] works
 * for Power key in Keypad driver, so we set KEY_ENDCALL in [8] because
 * EndCall key is Power key in Android.  If KPD_PWRKEY_USE_EINT is YES, these
 * eight keycodes will not work for Power key.
 */


#define KPD_KEY_DEBOUNCE  1024      /* (val / 32) ms */
#define KPD_PWRKEY_MAP    KEY_POWER

#define KPD_USE_EXTEND_TYPE   KPD_NO

/* HW keycode [0 ~ 71] -> Linux keycode */
#define KPD_INIT_KEYMAP()	\
{	\
	[0] = KEY_LEFT,		\
	[1] = KEY_F7,		\
	[2] = KEY_BACK,		\
	[3] = KEY_F4,		\
	[9] = KEY_F3,		\
	[10] = KEY_F1,		\
	[11] = KEY_F2,		\
	[12] = KEY_ENTER,		\
	[13] = KEY_F5,		\
	[18] = KEY_RIGHT,		\
	[19] = KEY_1,		\
	[20] = KEY_2,		\
	[21] = KEY_3,		\
	[22] = KEY_F6,		\
	[27] = KEY_DEL,		\
	[28] = KEY_4,		\
	[29] = KEY_5,		\
	[30] = KEY_6,		\
	[36] = KEY_UP,		\
	[37] = KEY_7,		\
	[38] = KEY_8,		\
	[39] = KEY_9,		\
	[45] = KEY_DOWN,		\
	[46] = KEY_STAR,		\
	[47] = KEY_0,		\
	[48] = KEY_POUND,		\
}	 
/*****************************************************************/
/*******************Preload Customation***************************/
/*****************************************************************/
#define KPD_PWRKEY_EINT_GPIO  GPIO0

#define KPD_PWRKEY_GPIO_DIN  0

#define KPD_DL_KEY1  0    /* KEY_LEFT */
#define KPD_DL_KEY2  2    /* KEY_BACK */
#define  KPD_DL_KEY3  8    /* KEY_POWER */
/*****************************************************************/
/*******************Uboot Customation***************************/
/*****************************************************************/
#define MT65XX_META_KEY  0    /* KEY_LEFT */
#define MT65XX_RECOVERY_KEY  9    /* KEY_F3 */
#define MT65XX_FACTORY_KEY  2    /* KEY_BACK */
/*****************************************************************/
/*******************factory Customation***************************/
/*****************************************************************/
#define KEYS_PWRKEY_MAP		{ KEY_POWER, "Power" }
#define DEFINE_KEYS_KEYMAP(x)		\
 struct key x[] = {	\
 	KEYS_PWRKEY_MAP,		\
{KEY_LEFT,   "left"  }, \
{KEY_F7,   "f7"  }, \
{KEY_BACK,   "back"  }, \
{KEY_F4,   "f4"  }, \
{KEY_F3,   "f3"  }, \
{KEY_F1,   "f1"  }, \
{KEY_F2,   "f2"  }, \
{KEY_ENTER,   "enter"  }, \
{KEY_F5,   "f5"  }, \
{KEY_RIGHT,   "right"  }, \
{KEY_1,   "1"  }, \
{KEY_2,   "2"  }, \
{KEY_3,   "3"  }, \
{KEY_F6,   "f6"  }, \
{KEY_DEL,   "del"  }, \
{KEY_4,   "4"  }, \
{KEY_5,   "5"  }, \
{KEY_6,   "6"  }, \
{KEY_UP,   "up"  }, \
{KEY_7,   "7"  }, \
{KEY_8,   "8"  }, \
{KEY_9,   "9"  }, \
{KEY_DOWN,   "down"  }, \
{KEY_STAR,   "star"  }, \
{KEY_0,   "0"  }, \
{KEY_POUND,   "pound"  }, \
}
#define CUST_KEY_UP  KEY_UP    
#define CUST_KEY_VOLUP  KEY_F6    
#define CUST_KEY_DOWN  KEY_DOWN    
#define CUST_KEY_VOLDOWN  KEY_F5    
#define CUST_KEY_CONFIRM  KEY_ENTER    
#define CUST_KEY_BACK  KEY_F7    
/*****************************************************************/
/*******************recovery Customation****************************/
/*****************************************************************/
#define RECOVERY_KEY_DOWN  KEY_F5   
#define RECOVERY_KEY_VOLDOWN  KEY_DOWN   
#define RECOVERY_KEY_UP  KEY_F6   
#define RECOVERY_KEY_VOLUP  KEY_UP   
#define RECOVERY_KEY_CENTER  KEY_POWER   
#define RECOVERY_KEY_RIGHT  KEY_BACK   
#endif




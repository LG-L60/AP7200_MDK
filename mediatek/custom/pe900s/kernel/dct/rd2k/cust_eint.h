/*
 * Generated by MTK SP Drv_CodeGen Version 03.13.0  for MT6572_NP. Copyright MediaTek Inc. (C) 2013.
 * Sat Oct 24 12:05:16 2015
 * Do Not Modify the File.
 */

#ifndef __CUST_EINTH
#define __CUST_EINTH

#ifdef __cplusplus
extern "C" {
#endif

#define CUST_EINT_POLARITY_LOW              0
#define CUST_EINT_POLARITY_HIGH             1
#define CUST_EINT_DEBOUNCE_DISABLE          0
#define CUST_EINT_DEBOUNCE_ENABLE           1
#define CUST_EINT_EDGE_SENSITIVE            0
#define CUST_EINT_LEVEL_SENSITIVE           1

//////////////////////////////////////////////////////////////////////////////


#define CUST_EINT_ACCDET_NUM              0
#define CUST_EINT_ACCDET_DEBOUNCE_CN      256
#define CUST_EINT_ACCDET_POLARITY         CUST_EINT_POLARITY_LOW
#define CUST_EINT_ACCDET_SENSITIVE        CUST_EINT_LEVEL_SENSITIVE
#define CUST_EINT_ACCDET_DEBOUNCE_EN      CUST_EINT_DEBOUNCE_ENABLE

#define CUST_EINT_TOUCH_PANEL_NUM              1
#define CUST_EINT_TOUCH_PANEL_DEBOUNCE_CN      0
#define CUST_EINT_TOUCH_PANEL_POLARITY         CUST_EINT_POLARITY_LOW
#define CUST_EINT_TOUCH_PANEL_SENSITIVE        CUST_EINT_EDGE_SENSITIVE
#define CUST_EINT_TOUCH_PANEL_DEBOUNCE_EN      CUST_EINT_DEBOUNCE_DISABLE

#define CUST_EINT_ALS_NUM              9
#define CUST_EINT_ALS_DEBOUNCE_CN      0
#define CUST_EINT_ALS_POLARITY         CUST_EINT_POLARITY_LOW
#define CUST_EINT_ALS_SENSITIVE        CUST_EINT_LEVEL_SENSITIVE
#define CUST_EINT_ALS_DEBOUNCE_EN      CUST_EINT_DEBOUNCE_DISABLE

#define CUST_EINT_GYRO_NUM              11
#define CUST_EINT_GYRO_DEBOUNCE_CN      0
#define CUST_EINT_GYRO_POLARITY         CUST_EINT_POLARITY_LOW
#define CUST_EINT_GYRO_SENSITIVE        CUST_EINT_LEVEL_SENSITIVE
#define CUST_EINT_GYRO_DEBOUNCE_EN      CUST_EINT_DEBOUNCE_DISABLE



//////////////////////////////////////////////////////////////////////////////
#ifdef __cplusplus
}

#endif
#endif //_CUST_EINT_H



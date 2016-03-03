/* Copyright Statement:
 *
 * This software/firmware and related documentation ("MediaTek Software") are
 * protected under relevant copyright laws. The information contained herein
 * is confidential and proprietary to MediaTek Inc. and/or its licensors.
 * Without the prior written permission of MediaTek inc. and/or its licensors,
 * any reproduction, modification, use or disclosure of MediaTek Software,
 * and information contained herein, in whole or in part, shall be strictly prohibited.
 *
 * MediaTek Inc. (C) 2010. All rights reserved.
 *
 * BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
 * THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
 * RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON
 * AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.
 * NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE
 * SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR
 * SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH
 * THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES
 * THAT IT IS RECEIVER'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES
 * CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEK
 * SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO CONFORM TO A PARTICULAR
 * STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND
 * CUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,
 * AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,
 * OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO
 * MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE.
 *
 * The following software/firmware and/or related documentation ("MediaTek Software")
 * have been modified by MediaTek Inc. All revisions are subject to any receiver's
 * applicable license agreements with MediaTek Inc.
 */

/*****************************************************************************
*  Copyright Statement:
*  --------------------
*  This software is protected by Copyright and the information contained
*  herein is confidential. The software may not be copied and the information
*  contained herein may not be used or disclosed except with the written
*  permission of MediaTek Inc. (C) 2005
*
*  BY OPENING THIS FILE, BUYER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
*  THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
*  RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO BUYER ON
*  AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,
*  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
*  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.
*  NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE
*  SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR
*  SUPPLIED WITH THE MEDIATEK SOFTWARE, AND BUYER AGREES TO LOOK ONLY TO SUCH
*  THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. MEDIATEK SHALL ALSO
*  NOT BE RESPONSIBLE FOR ANY MEDIATEK SOFTWARE RELEASES MADE TO BUYER'S
*  SPECIFICATION OR TO CONFORM TO A PARTICULAR STANDARD OR OPEN FORUM.
*
*  BUYER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND CUMULATIVE
*  LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,
*  AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,
*  OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE CHARGE PAID BY BUYER TO
*  MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE. 
*
*  THE TRANSACTION CONTEMPLATED HEREUNDER SHALL BE CONSTRUED IN ACCORDANCE
*  WITH THE LAWS OF THE STATE OF CALIFORNIA, USA, EXCLUDING ITS CONFLICT OF
*  LAWS PRINCIPLES.  ANY DISPUTES, CONTROVERSIES OR CLAIMS ARISING THEREOF AND
*  RELATED THERETO SHALL BE SETTLED BY ARBITRATION IN SAN FRANCISCO, CA, UNDER
*  THE RULES OF THE INTERNATIONAL CHAMBER OF COMMERCE (ICC).
*
*****************************************************************************/
/*******************************************************************************
 *
 * Filename:
 * ---------
 * bt_cust_type.h
 *
 * Project:
 * --------
 *   BT Project
 *
 * Description:
 * ------------
 *   This file is used to customization bt host
 *
 * Author:
 * -------
 * SH Lai
 *
 *==============================================================================
 *             HISTORY
 * Below this line, this part is controlled by PVCS VM. DO NOT MODIFY!!
 *------------------------------------------------------------------------------
 * $Revision: 
 * $Modtime:
 * $Log: 
 *------------------------------------------------------------------------------
 * Upper this line, this part is controlled by PVCS VM. DO NOT MODIFY!!
 *==============================================================================
 *******************************************************************************/
#ifndef __BT_CUST_TABLE_H__
#define __BT_CUST_TABLE_H__

const bt_config_item g_config_table[] = {
    {
        .name = "pageTimeout",
        .value = (void*)0x3800,
    },
    {
        .name = "connectionTimeout",
        .value = (void*)0x6400,
    },
    {
        .name = "InquiryScanWindow",
        .value = (void*)0x0012,
    },
    {
        .name = "inquiryScanInterval",
        .value = (void*)0x1000,
    },
    {
        .name = "pageScanWindow",
        .value = (void*)0x0012,
    },
    {
        .name = "pageScanInterval",
        .value = (void*)0x0800,
    },
    {
        .name = "setupSyncCmdRawData",
        .value = (void*)0x6400,
    },
    {
        .name = "createConnRoleSwitchReq",
        .value = (void*)1,
    },
    {
        .name = "inquiryLengthArray",
        .value = (void*)0x6400,
    },
    {
        .name = "pinPairingReqTimeoutActive",
        .value = (void*)0x4500,
    },
    {
        .name = "pinPairingReqTimeoutPassive",
        .value = (void*)0x4500,
    },
    {
        .name = "SSPPairingReqTimeoutActive",
        .value = (void*)0x4500,
    },
    {
        .name = "SSPPairingReqTimeoutPassive",
        .value = (void*)0x4500,
    },
    {
        .name = "SCOPktType",
        .value = (void*)0x03C7,
    },
    {
        .name = "eSCOPktType",
        .value = (void*)0x0388,
    },
    {
        .name = "RoleSwitchRetryCount",
        .value = (void*)1,
    },
    {
        .name = "GapInquiryShowAddress",
        .value = (void*)1,
    },
    {
        .name = "AutoAcceptReqFromPairedDevice",
        .value = (void*)1,
    },
    {
        .name = "DelayAuthentication",
        .value = (void*)0,
    },
    {
        .name = "DisableInBandRingtone",
        .value = (void*)1,
    },
    {
        .name = "CreateConnectionRetryNoEventReported",
        .value = (void*)0,
    },
    {
        .name = "SSPSupport",
        .value = (void*)1,
    },
    {
        .name = "HFPSDPCache",
        .value = (void*)2,
    },
    {   
        .name = "30HSSupported",
#ifdef __BT_3_0_HS__
        .value = (void*)1,
#else
        .value = (void*)0,
#endif
    },
    {
        .name = "LESupport",
#ifdef __BT_4_0_BLE__
        .value = (void*)1,
#else
        .value = (void*)0,
#endif
    },
    {
        .name = "DevSupportServices",
        .value = (void*)(unsigned short[]){0},
    },
    {
        .name = "SDPDelayTimeout",
        .value = (void*)500,  /* ms */
    },
    {
        .name = "InquiryTxPwr",
        .value = (void*)(char[]){6, -128/* -128 as terminator */},
    },
    {
        .name = "InquiryLength",
        .value = (void*)(unsigned char[]){4, 0},
    },
    #if 0
    /* Do not customize InquiryResponse to let stack use default value */
    {
        .name = "InquiryResponse",
        .value = (void*)(unsigned char[]){25, 0},
    },
    #endif
    {
        .name = "NoRoleSwitch",
        .value = (void*)0,
    },
    {
        .name = "KeepAwakeTime",    /* ms */
        .value = (void*)5000,
    },
    /*********************************************
    *  Minimum value for the connection event interval.
    *  This shall be less than or equal to LEConnIntervalMax.    
    *  range : 0x0006 ~ 0x0C80 (default: 0x0100)
    *  Time = N * 1.25 msec
    *  Time Range : 7.5(msec) ~ 4(seconds)
    **********************************************/     
    {
        .name = "LEConnIntervalMin",    
        .value = (void*)0x0100,
    },
    /*********************************************
    *  Maximum value for the connection event interval.
    *  This shall be greater than or equal to LEConnIntervalMin.      
    *  range : 0x0006 ~ 0x0C80 (default: 0x0200)
    *  Time = N * 1.25 msec
    *  Time Range : 7.5(msec) ~ 4(seconds)
    **********************************************/     
    {
        .name = "LEConnIntervalMax",    
        .value = (void*)0x0200,
    },
    /*********************************************
    *  Slave latency for the connection in number of 
    *  connection events.      
    *  range : 0x0000 ~ 0x01F3 (default: 0x0000)
    **********************************************/    
    {
        .name = "LEConnLatency",    
        .value = (void*)0x0000,
    },
    /*********************************************
    *  Supervision timeout for the LE link.     
    *  range : 0x000A ~ 0x0C80 (default: 0x0500)
    *  Time = N * 10 msec
    *  Time Range : 100(msec) ~ 32(seconds)    
    **********************************************/    
    {
        .name = "LESupervisionTO",    
        .value = (void*)0x0500,
    },   
    /*sniff mode settings: */
	/* element 0: enable(1)/disale(0) sniff mode*/
	/* element 1: period(unit:ms) later to enter sniff mode if no data is sent*/
	/* element 2: min interval(*0.625ms)*/
	/* element 3: max interval(*0.625ms)*/
	/* element 4: attempt(*0.625ms)*/	
	/* element 5: timeout(*1.25ms)*/	
	{
        .name = "sniffmode",
        .value = (void*)(unsigned short[]){0,  
        								   2000,
        								   800,
        								   2048,
        								   4,
        								   1},
    },  
     /*handsfree SDP settings: */
	/* element 0: enable(1)/disale(0) Handsfree sdp registration*/
	/* element 1: rfcomm channel, default 21*/
	/* element 2: handsfree version, default Ver1.5*/
	/* element 3: supported features*/
    {
    	.name = "hfsdp",
		.value = (void*)(unsigned short[]){0x0000, 
											0x0015,
											0x0105,
											0x0000},
	},
    /*headset SDP settings: */
	/* element 0: enable(1)/disale(0) Headset sdp registration*/
	/* element 1: rfcomm channel, default 22*/
	/* element 2: headset version, default Ver1.0*/
	/* element 3: remote volumne control, supported(1)/ unsupported(0), default unsupported*/
    {
    	.name = "hssdp",
		.value = (void*)(unsigned short[]){0x0000, 
											0x0016,
											0x0100,
											0x0000},
	},  
};

bt_dev_config g_dev_config[] = {
    /* MTK defined IOT list */
    {
        .name = "i.Tech Clip R35",
        .config_table = 
        (bt_dev_config_item[])
        {
            {
                .name = "DevSupportServices",
                .value = (void*)(unsigned short[]){0x111E, 0x1108, 0},
            },            
            {0} /* terminator */
        },
    },    
};

#endif /* __BT_CUST_TABLE_H__ */

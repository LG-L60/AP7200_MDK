# Copyright Statement:
#
# This software/firmware and related documentation ("MediaTek Software") are
# protected under relevant copyright laws. The information contained herein
# is confidential and proprietary to MediaTek Inc. and/or its licensors.
# Without the prior written permission of MediaTek inc. and/or its licensors,
# any reproduction, modification, use or disclosure of MediaTek Software,
# and information contained herein, in whole or in part, shall be strictly prohibited.
#
# MediaTek Inc. (C) 2010. All rights reserved.
#
# BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
# THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
# RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON
# AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.
# NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE
# SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR
# SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH
# THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES
# THAT IT IS RECEIVER'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES
# CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEK
# SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO CONFORM TO A PARTICULAR
# STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND
# CUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,
# AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,
# OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO
# MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE.
#
# The following software/firmware and/or related documentation ("MediaTek Software")
# have been modified by MediaTek Inc. All revisions are subject to any receiver's
# applicable license agreements with MediaTek Inc.


#
# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This is a generic product that isn't specialized for a specific device.
# It includes the base Android platform.

TARGET_ARCH := arm

PRODUCT_PACKAGES := \
    libI420colorconvert \
    libvcodec_utility \
    libvcodec_oal \
    libh264dec_xa.ca7 \
    libh264dec_xb.ca7 \
    libmp4dec_sa.ca7 \
    libmp4dec_sb.ca7 \
    libvp8dec_xa.ca7 \
    libmp4enc_xa.ca7 \
    libmp4enc_xb.ca7 \
    libh264enc_sa.ca7 \
    libh264enc_sb.ca7 \
    libvc1dec_sa.ca7 \
    libvideoeditorplayer \
    libvideoeditor_osal \
    libvideoeditor_3gpwriter \
    libvideoeditor_mcs \
    libvideoeditor_core \
    libvideoeditor_stagefrightshells \
    libvideoeditor_videofilters \
    libvideoeditor_jni \
    audio.primary.default \
    audio_policy.stub \
    local_time.default \
    libaudiocustparam \
    libh264dec_xa.ca9 \
    libh264dec_xb.ca9 \
    libh264dec_customize \
    libmp4dec_sa.ca9 \
    libmp4dec_sb.ca9 \
    libmp4dec_customize \
    libvp8dec_xa.ca9 \
    libmp4enc_xa.ca9 \
    libmp4enc_xb.ca9 \
    libh264enc_sa.ca9 \
    libh264enc_sb.ca9 \
    libvcodec_oal \
    libvc1dec_sa.ca9 \
    init.factory.rc \
    libaudio.primary.default \
    audio_policy.default \
    libaudio.a2dp.default \
    libMtkVideoTranscoder \
    libMtkOmxCore \
    libMtkOmxOsalUtils \
    libMtkOmxVdec \
    libMtkOmxVenc \
    libaudiodcrflt \
    libaudiosetting \
    librtp_jni \
    mfv_ut \
    libstagefrighthw \
    libstagefright_memutil \
    factory.ini \
    libmtdutil \
    libminiui \
    factory \
    libaudio.usb.default \
    AccountAndSyncSettings \
    DeskClock \
    AlarmProvider \
    Bluetooth \
    Calculator \
    Calendar \
    CertInstaller \
    DrmProvider \
    Email \
    FusedLocation \
    TelephonyProvider \
    Exchange2 \
    LatinIME \
    Music \
    MusicFX \
    Protips \
    QuickSearchBox \
    Settings \
    Sync \
    SystemUI \
    Updater \
    CalendarProvider \
    ccci_mdinit \
    ccci_fsd \
    permission_check \
    batterywarning \
    SyncProvider \
    Launcher2 \
    disableapplist.txt \
    resmonwhitelist.txt \
    MTKThermalManager \
    thermal_manager \
    thermald \
    thermal \
    CellConnService \
    MTKAndroidSuiteDaemon \
    libfmjni \
    libfmmt6616 \
    libfmmt6626 \
    libfmmt6620 \
    libfmmt6628 \
    libfmmt6627 \
    libfmar1000 \
    libfmcust \
    fm_cust.cfg \
    mt6620_fm_cust.cfg \
    mt6627_fm_cust.cfg \
    mt6628_fm_rom.bin \
    mt6628_fm_v1_patch.bin \
    mt6628_fm_v1_coeff.bin \
    mt6628_fm_v2_patch.bin \
    mt6628_fm_v2_coeff.bin \
    mt6628_fm_v3_patch.bin \
    mt6628_fm_v3_coeff.bin \
    mt6628_fm_v4_patch.bin \
    mt6628_fm_v4_coeff.bin \
    mt6628_fm_v5_patch.bin \
    mt6628_fm_v5_coeff.bin \
    mt6627_fm_v1_patch.bin \
    mt6627_fm_v1_coeff.bin \
    mt6627_fm_v2_patch.bin \
    mt6627_fm_v2_coeff.bin \
    mt6627_fm_v3_patch.bin \
    mt6627_fm_v3_coeff.bin \
    mt6627_fm_v4_patch.bin \
    mt6627_fm_v4_coeff.bin \
    mt6627_fm_v5_patch.bin \
    mt6627_fm_v5_coeff.bin \
    ami304d \
    akmd8963 \
    akmd8975 \
    akmd09911 \
    st480d \
    geomagneticd \
    orientationd \
    memsicd \
    msensord \
    lsm303md \
    memsicd3416x \
    s62xd smartsensor \
    bmm050d \
    mc6420d \
    qmc5983d \
    magd \
    sensors.mt6577 \
    sensors.mt6589 \
    sensors.default\
    libhwm \
    lights.default \
    libft \
    meta_tst \
    GoogleOtaBinder \
    dm_agent_binder \
    libvdmengine.so \
    libvdmfumo.so \
    libvdmlawmo.so \
    libvdmscinv.so \
    libvdmscomo.so \
    dhcp6c \
    dhcp6ctl \
    dhcp6c.conf \
    dhcp6cDNS.conf \
    dhcp6s \
    dhcp6s.conf \
    dhcp6c.script \
    dhcp6cctlkey \
    libblisrc \
    libifaddrs \
    libbluetoothdrv \
    libbluetooth_mtk \
    libbluetoothem_mtk \
    libbluetooth_relayer \
    libmeta_bluetooth \
    mobile_log_d \
    libmobilelog_jni \
    libaudio.r_submix.default \
    libaudio.usb.default \
    libnbaio \
    libaudioflinger \
    libmeta_audio \
    sysctl \
    sysctld \
    liba3m \
    libja3m \
    libmmprofile \
    libmmprofile_jni \
    libtvoutjni \
    libtvoutpattern \
    libmtkhdmi_jni \
    aee \
    aee_aed \
    aee_core_forwarder \
    aee_dumpstate \
    rtt \
    libaed.so \
    libmediatek_exceptionlog\
    camera.default \
    xlog \
    liblog \
    shutdown \
    WIFI_RAM_CODE \
    WIFI_RAM_CODE_E6 \
    WIFI_RAM_CODE_MT6628 \
    muxreport \
    rild \
    mtk-ril \
    librilmtk \
    libutilrilmtk \
    gsm0710muxd \
    rildmd2 \
    mtk-rilmd2 \
    librilmtkmd2 \
    gsm0710muxdmd2 \
    md_minilog_util \
    wbxml \
    wappush \
    thememap.xml \
    libBLPP.so \
    rc.fac \
    mtkGD \
    pvrsrvctl \
    libEGL_mtk.so \
    libGLESv1_CM_mtk.so \
    libGLESv2_mtk.so \
    gralloc.mt6577.so \
    gralloc.mt6589.so \
    gralloc.mt8125.so \
    gralloc.mt8389.so \
    gralloc.mt6572.so \
    libusc.so \
    libglslcompiler.so \
    libIMGegl.so \
    libpvr2d.so \
    libsrv_um.so \
    libsrv_init.so \
    libPVRScopeServices.so \
    libpvrANDROID_WSEGL.so \
    libFraunhoferAAC \
    libMtkOmxAudioEncBase \
    libMtkOmxAmrEnc \
    libMtkOmxAwbEnc \
    libMtkOmxAacEnc \
    libMtkOmxVorbisEnc \
    libMtkOmxAdpcmEnc \
    libMtkOmxMp3Dec \
    libMtkOmxAacDec \
    libMtkOmxG711Dec \
    libMtkOmxVorbisDec \
    libMtkOmxAudioDecBase \
    libMtkOmxAdpcmDec \
    libMtkOmxWmaDec \
    libMtkOmxRawDec \
    libMtkOmxAMRNBDec \
    libMtkOmxAMRWBDec \
    libvoicerecognition_jni \
    libvoicerecognition \
    libphonemotiondetector_jni \
    libphonemotiondetector \
    libmotionrecognition \
    libasf \
    libasfextractor \
    audio.primary.default \
    audio_policy.stub \
    audio_policy.default \
    libaudio.primary.default \
    libaudio.a2dp.default \
    libaudio-resampler \
    local_time.default \
    libaudiocustparam \
    libaudiodcrflt \
    libaudiosetting \
    librtp_jni \
    libmatv_cust \
    libmtkplayer \
    libatvctrlservice \
    matv \
    libMtkOmxApeDec \
    libMtkOmxFlacDec \
    ppp_dt \
    power.default \
    libdiagnose \
    netdiag \
    mnld \
    libmnlp \
    libmnlp_mt6628 \
    libmnlp_mt6620 \
    libmnlp_mt3332 \
    libmnlp_mt6572 \
    gps.default\
    libmnl.a \
    libsupl.a \
    libhotstill.a \
    libagent.a \
    libsonivox \
    iAmCdRom.iso \
    libmemorydumper \
    memorydumper \
    libvt_custom \
    libamrvt \
    libvtmal \
    racoon \
    libipsec \
    libpcap \
    mtpd \
    netcfg \
    pppd \
    pppd_dt \
    dhcpcd \
    dhcpcd.conf \
    dhcpcd-run-hooks \
    20-dns.conf \
    95-configured \
    radvd \
    radvd.conf \
    dnsmasq \
    netd \
    ndc \
    libiprouteutil \
    libnetlink \
    tc \
    libext2_profile \
    e2fsck \
    libext2_blkid \
    libext2_e2p \
    libext2_com_err \
    libext2fs \
    libext2_uuid \
    mke2fs \
    tune2fs \
    badblocks \
    resize2fs \
    libnvram \
    libnvram_daemon_callback \
    libfile_op \
    nvram_agent_binder \
    nvram_daemon \
    make_ext4fs \
    sdcard \
    libext \
    libext \
    libext4 \
    libext6 \
    libxtables \
    libip4tc \
    libip6tc \
    ipod \
    libipod \
    ipohctl \
    boot_logo_updater\
    boot_logo\
    bootanimation\
    libtvoutjni \
    libtvoutpattern \
    libmtkhdmi_jni \
    libhissage.so \
    libhpe.so \
    sdiotool \
    superumount \
    libsched \
    fsck_msdos_mtk \
    cmmbsp \
    libcmmb_jni \
    robotium \
    libc_malloc_debug_mtk \
    dpfd \
    libaal \
    aal \
    SchedulePowerOnOff \
    BatteryWarning \
    pq \
    wlan_loader \
    showmap \
    tiny_mkswap \
    tiny_swapon \
    tiny_swapoff \
    dmlog \
    mtk_msr.ko \
    ext4_resize \
    mtop \
    send_bug \
    met-cmd \
    libmet-tag \
    libMtkOmxRawDec \
    libperfservice \
    libperfservice_test \
    VideoPlayer \
    sn \
    lcdc_screen_cap \
    libJniAtvService \
    terservice \
    libterservice

ifeq ($(strip $(MTK_FLV_PLAYBACK_SUPPORT)), yes)
    PRODUCT_PACKAGES += libflv \
    libflvextractor
endif
ifeq ($(strip $(MTK_CELL_BROADCAST_RECEIVER_SUPPORT)), yes) 
  PRODUCT_PACKAGES += CellBroadcastReceiver
endif

ifneq ($(strip $(foreach value,$(DFO_NVRAM_SET),$(filter yes,$($(value))))),)
  PRODUCT_PACKAGES += \
    featured \
    libdfo \
    libdfo_jni
endif

ifeq ($(strip $(MTK_CMAS_SUPPORT)), yes)
  PRODUCT_PACKAGES += CellBroadcastReceiver \
                      CmasEM
endif

ifeq ($(strip $(MTK_CDS_EM_SUPPORT)), yes)
  PRODUCT_PACKAGES += CDS_INFO
endif

ifeq ($(strip $(MTK_WLAN_SUPPORT)), yes)
  PRODUCT_PACKAGES += WIFI_RAM_CODE_MT6582
endif
#
ifeq ($(strip $(MTK_QQBROWSER_SUPPORT)), yes)
  PRODUCT_PACKAGES += QQBrowser
endif

ifeq ($(strip $(MTK_TENCENT_MOBILE_MANAGER_NORMAL_SUPPORT)), yes)
  PRODUCT_PACKAGES += Tencent_Mobile_Manager_Normal
endif

ifeq ($(strip $(MTK_TENCENT_MOBILE_MANAGER_SLIM_SUPPORT)), yes)
  PRODUCT_PACKAGES += Tencent_Mobile_Manager_Slim
endif
#
ifeq ($(strip $(MTK_NFC_SUPPORT)), yes)
    PRODUCT_PACKAGES += nfcservice
endif
#
ifeq ($(strip $(MTK_BAIDU_LOCATION_SUPPORT)), yes)
  PRODUCT_PACKAGES += Baidu_Location
endif
#
PRODUCT_COPY_FILES += \
   system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
    system/extras/bugmailer/send_bug:system/bin/send_bug

ifeq ($(strip $(MTK_COMBO_SUPPORT)), yes)

BUILD_MT6620 := false
BUILD_MT6628 := false
BUILD_MT6582 := false

  PRODUCT_PACKAGES += WMT.cfg \
    6620_launcher \
    6620_wmt_concurrency \
    6620_wmt_lpbk \
    stp_dump3

ifeq ($(strip $(MTK_COMBO_CHIP)), MT6572_CONSYS)
  PRODUCT_PACKAGES += mt6572_82_patch_e1_0_hdr.bin \
                      mt6572_82_patch_e1_1_hdr.bin \
                      WMT_SOC.cfg
endif

ifneq ($(filter MT6620E3,$(MTK_COMBO_CHIP)),)
    BUILD_MT6620 := true
endif

ifneq ($(filter MT6620,$(MTK_COMBO_CHIP)),)
    BUILD_MT6620 := true
endif

ifeq ($(strip $(MTK_CMCC_MOBILEMARKET_SUPPORT)), yes)
      PRODUCT_PACKAGES += CMCC_MobileMarket
endif

ifneq ($(filter MT6628,$(MTK_COMBO_CHIP)),)
    BUILD_MT6628 := true
endif


ifeq ($(BUILD_MT6620), true)
  PRODUCT_PACKAGES += mt6620_patch_e3_hdr.bin \
    mt6620_patch_e3_0_hdr.bin \
    mt6620_patch_e3_1_hdr.bin \
    mt6620_patch_e3_2_hdr.bin \
    mt6620_patch_e3_3_hdr.bin \
    mt6620_patch_e6_hdr.bin

  ifneq ($(filter mt6620_ant_m1,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6620_ant_m1.cfg
  endif

  ifneq ($(filter mt6620_ant_m2,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6620_ant_m2.cfg
  endif

  ifneq ($(filter mt6620_ant_m3,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6620_ant_m3.cfg
  endif

  ifneq ($(filter mt6620_ant_m4,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6620_ant_m4.cfg
  endif

  ifneq ($(filter mt6620_ant_m5,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6620_ant_m5.cfg
  endif

  ifneq ($(filter mt6620_ant_m6,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6620_ant_m6.cfg
  endif

  ifneq ($(filter mt6620_ant_m7,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6620_ant_m7.cfg
  endif

endif


ifeq ($(BUILD_MT6628), true)
  PRODUCT_PACKAGES += mt6628_patch_e1_hdr.bin \
    mt6628_patch_e2_hdr.bin \
    mt6628_patch_e2_0_hdr.bin \
    mt6628_patch_e2_1_hdr.bin

  ifneq ($(filter mt6628_ant_m1,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6628_ant_m1.cfg
  endif

  ifneq ($(filter mt6628_ant_m2,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6628_ant_m2.cfg
  endif

  ifneq ($(filter mt6628_ant_m3,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6628_ant_m3.cfg
  endif

  ifneq ($(filter mt6628_ant_m4,$(CUSTOM_HAL_ANT)),)
    PRODUCT_PACKAGES += mt6628_ant_m4.cfg
  endif

endif


ifeq ($(strip $(MTK_VOICE_UNLOCK_SUPPORT)),yes)
  PRODUCT_PACKAGES += VoiceUnlock
endif


endif

ifeq ($(strip $(GEMINI)),yes)
  ifeq ($(strip $(MTK_GEMINI_3SIM_SUPPORT)),yes)
    PRODUCT_PROPERTY_OVERRIDES += \
      persist.gemini.sim_num=3
  else
    ifeq ($(strip $(MTK_GEMINI_4SIM_SUPPORT)),yes)
      PRODUCT_PROPERTY_OVERRIDES += \
         persist.gemini.sim_num=4
    else
      PRODUCT_PROPERTY_OVERRIDES += \
         persist.gemini.sim_num=2
    endif
  endif
else
  PRODUCT_PROPERTY_OVERRIDES += \
     persist.gemini.sim_num=1
endif
#
ifeq ($(strip $(MTK_GEMINI_SMART_SIM_SWITCH)),yes)
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.gemini.smart_sim_switch=true
else
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.gemini.smart_sim_switch=false
endif
#
ifeq ($(strip $(MTK_GEMINI_SMART_3G_SWITCH)),0)
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.gemini.smart_3g_switch=0
endif
ifeq ($(strip $(MTK_GEMINI_SMART_3G_SWITCH)),1)
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.gemini.smart_3g_switch=1
endif
ifeq ($(strip $(MTK_GEMINI_SMART_3G_SWITCH)),2)
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.gemini.smart_3g_switch=2
endif

ifeq ($(strip $(MTK_EMMC_SUPPORT)), yes)
  PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.mount.fs=EXT4
else
  ifeq ($(strip $(MTK_NAND_UBIFS_SUPPORT)), yes)
    PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.mount.fs=UBIFS
  else
    PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.mount.fs=YAFFS
  endif
endif

ifeq ($(strip $(MTK_DATAUSAGE_SUPPORT)), yes)
  ifeq ($(strip $(MTK_DATAUSAGELOCKSCREENCLIENT_SUPPORT)), yes)
    PRODUCT_PACKAGES += DataUsageLockScreenClient
  endif
endif

ifeq ($(strip $(MTK_ENABLE_MD1)),yes)
  ifneq ($(wildcard $(MTK_ROOT_CUSTOM_OUT))/modem/modem_1_2g_n.img),)
    PRODUCT_PACKAGES += modem_1_2g_n.img
    ifeq ($(MTK_MDLOGGER_SUPPORT),yes)
      PRODUCT_PACKAGES += catcher_filter_1_2g_n.bin
    endif
  endif
  ifneq ($(wildcard $(MTK_ROOT_CUSTOM_OUT))/modem/modem_1_wg_n.img),)
    PRODUCT_PACKAGES += modem_1_wg_n.img
    ifeq ($(MTK_MDLOGGER_SUPPORT),yes)
      PRODUCT_PACKAGES += catcher_filter_1_wg_n.bin
    endif
  endif
  ifneq ($(wildcard $(MTK_ROOT_CUSTOM_OUT))/modem/modem_1_tg_n.img),)
    PRODUCT_PACKAGES += modem_1_tg_n.img
    ifeq ($(MTK_MDLOGGER_SUPPORT),yes)
      PRODUCT_PACKAGES += catcher_filter_1_tg_n.bin
    endif
  endif
endif

ifeq ($(strip $(MTK_ENABLE_MD2)),yes)
  ifneq ($(wildcard $(MTK_ROOT_CUSTOM_OUT))/modem/modem_2_2g_n.img),)
    PRODUCT_PACKAGES += modem_2_2g_n.img
    ifeq ($(MTK_MDLOGGER_SUPPORT),yes)
      PRODUCT_PACKAGES += catcher_filter_2_2g_n.bin
    endif
  endif
  ifneq ($(wildcard $(MTK_ROOT_CUSTOM_OUT))/modem/modem_2_wg_n.img),)
    PRODUCT_PACKAGES += modem_2_wg_n.img
    ifeq ($(MTK_MDLOGGER_SUPPORT),yes)
      PRODUCT_PACKAGES += catcher_filter_2_wg_n.bin
    endif
  endif
  ifneq ($(wildcard $(MTK_ROOT_CUSTOM_OUT))/modem/modem_2_tg_n.img),)
    PRODUCT_PACKAGES += modem_2_tg_n.img
    ifeq ($(MTK_MDLOGGER_SUPPORT),yes)
      PRODUCT_PACKAGES += catcher_filter_2_tg_n.bin
    endif
  endif
endif

ifeq ($(strip $(MTK_ISMS_SUPPORT)), yes)
  PRODUCT_PACKAGES += ISmsService
endif


ifeq ($(strip $(MTK_NFC_SUPPORT)), yes)
  PRODUCT_PACKAGES += nfcstackp
  PRODUCT_PACKAGES += DeviceTestApp
  PRODUCT_PACKAGES += libmtknfc_dynamic_load_jni
  PRODUCT_PACKAGES += server_open_nfc
  PRODUCT_PACKAGES += libopen_nfc_client_jni
  PRODUCT_PACKAGES += libopen_nfc_server_jni
  PRODUCT_PACKAGES += libnfc_hal_msr3110
  PRODUCT_PACKAGES += libnfc_msr3110_jni
  PRODUCT_PACKAGES += libnfc_mt6605_jni
  PRODUCT_PACKAGES += libdta_dynamic_load_jni
  PRODUCT_PACKAGES += libdta_msr3110_jni
  PRODUCT_PACKAGES += libdta_mt6605_jni
endif

ifeq ($(strip $(MTK_MTKLOGGER_SUPPORT)), yes)
  PRODUCT_PACKAGES += MTKLogger
endif

ifeq ($(strip $(MTK_SPECIFIC_SM_CAUSE)), yes)
  PRODUCT_PROPERTY_OVERRIDES += \
  ril.specific.sm_cause=1
else
  PRODUCT_PROPERTY_OVERRIDES += \
  ril.specific.sm_cause=0
endif

ifeq ($(strip $(MTK_EMULATOR_SUPPORT)),yes)
  PRODUCT_PACKAGES += SDKGallery
else
  PRODUCT_PACKAGES += Gallery2
endif

ifeq ($(strip $(MTK_BAIDU_MAP_SUPPORT)), yes)
      PRODUCT_PACKAGES += Baidu_Map
endif
ifeq ($(strip $(MTK_BAIDU_SEARCH_BAR_SUPPORT)), yes)
      PRODUCT_PACKAGES += Baidu_Search_Bar
endif

ifneq ($(strip $(MTK_EMULATOR_SUPPORT)),yes)
  PRODUCT_PACKAGES += Provision
endif

ifeq ($(strip $(HAVE_CMMB_FEATURE)), yes)
  PRODUCT_PACKAGES += CMMBPlayer
endif

ifeq ($(strip $(MTK_DATA_TRANSFER_APP)), yes)
  PRODUCT_PACKAGES += DataTransfer
endif

ifeq ($(strip $(MTK_MDM_APP)),yes)
  PRODUCT_PACKAGES += MediatekDM
endif

ifeq ($(strip $(MTK_VT3G324M_SUPPORT)),yes)
  PRODUCT_PACKAGES += libmtk_vt_client \
                      libmtk_vt_em \
                      libmtk_vt_utils \
                      libmtk_vt_service \
                      libmtk_vt_swip \
                      vtservice
endif

ifeq ($(strip $(MTK_OOBE_APP)),yes)
  PRODUCT_PACKAGES += OOBE
endif

ifeq ($(strip $(MTK_MEDIA3D_APP)), yes)
    PRODUCT_PACKAGES += Media3D
endif

ifdef MTK_WEATHER_PROVIDER_APP
  ifneq ($(strip $(MTK_WEATHER_PROVIDER_APP)), no)
    PRODUCT_PACKAGES += MtkWeatherProvider
  endif
endif

ifeq ($(strip $(MTK_VOICE_UNLOCK_SUPPORT)),yes)
    PRODUCT_PACKAGES += VoiceCommand
else
        ifeq ($(strip $(MTK_VOICE_UI_SUPPORT)),yes)
            PRODUCT_PACKAGES += VoiceCommand
        endif
endif

ifeq ($(strip $(MTK_ENABLE_VIDEO_EDITOR)),yes)
  PRODUCT_PACKAGES += VideoEditor
endif

ifeq ($(strip $(MTK_CALENDAR_IMPORTER_APP)), yes)
  PRODUCT_PACKAGES += CalendarImporter
endif

ifeq ($(strip $(MTK_THEMEMANAGER_APP)), yes)
  PRODUCT_PACKAGES += theme-res-mint \
                      theme-res-mocha \
                      theme-res-raspberry \
                      libtinyxml
endif

ifeq ($(strip $(MTK_GALLERY3D_APP)), yes)
  PRODUCT_PACKAGES += Gallery3D
endif

ifeq ($(strip $(MTK_LOG2SERVER_APP)), yes)
  PRODUCT_PACKAGES += Log2Server \
                      Excftpcommonlib \
                      Excactivationlib \
                      Excadditionnallib \
                      Excmaillib

endif

ifeq ($(strip $(MTK_GALLERY_APP)), yes)
  PRODUCT_PACKAGES += Gallery
endif

ifeq ($(strip $(MTK_INPUTMETHOD_PINYINIME_APP)), yes)
  PRODUCT_PACKAGES += PinyinIME
  PRODUCT_PACKAGES += libjni_pinyinime
endif

  PRODUCT_PACKAGES += Camera

ifeq ($(strip $(MTK_VIDEO_FAVORITES_WIDGET_APP)), yes)
  ifneq ($(strip $(MTK_TABLET_PLATFORM)), yes)
    ifneq (,$(filter hdpi xhdpi,$(MTK_PRODUCT_LOCALES)))
      PRODUCT_PACKAGES += VideoFavorites \
                          libjtranscode
    endif
  endif
endif

ifneq (,$(filter km_KH,$(MTK_PRODUCT_LOCALES)))
  PRODUCT_PACKAGES += Mondulkiri.ttf
endif
ifneq (,$(filter my_MM,$(MTK_PRODUCT_LOCALES)))
  PRODUCT_PACKAGES += Padauk.ttf
endif

ifeq ($(strip $(MTK_VIDEOWIDGET_APP)),yes)
  PRODUCT_PACKAGES += MtkVideoWidget
endif

ifeq ($(strip $(MTK_BSP_PACKAGE)),yes)
  PRODUCT_PACKAGES += Stk
else
  PRODUCT_PACKAGES += Stk1
endif

ifeq ($(strip $(MTK_ENGINEERMODE_APP)), yes)
  PRODUCT_PACKAGES += EngineerMode \
                      EngineerModeSim \
                      libem_bt_jni \
                      libem_support_jni \
                      libem_gpio_jni \
                      libem_modem_jni \
                      libem_usb_jni \
                      libem_wifi_jni
  ifeq ($(strip $(MTK_NFC_SUPPORT)), yes)
      PRODUCT_PACKAGES += libem_nfc_jni
  endif
endif

ifeq ($(strip $(MTK_RCSE_SUPPORT)), yes)
    PRODUCT_PACKAGES += Rcse
    PRODUCT_PACKAGES += Provisioning
endif

ifeq ($(strip $(MTK_GPS_SUPPORT)), yes)
  PRODUCT_PACKAGES += YGPS
  PRODUCT_PACKAGES += BGW
  PRODUCT_PROPERTY_OVERRIDES += \
    bgw.current3gband=0
endif

ifeq ($(strip $(MTK_STEREO3D_WALLPAPER_APP)), yes)
  PRODUCT_PACKAGES += Stereo3DWallpaper
endif

ifeq ($(strip $(MTK_DATAREG_APP)),yes)
  PRODUCT_PACKAGES += DataReg
  PRODUCT_PACKAGES += DataRegSecrets
  PRODUCT_PACKAGES += DataRegDefault.properties
endif

ifeq ($(strip $(MTK_GPS_SUPPORT)), yes)
  ifeq ($(strip $(MTK_GPS_CHIP)), MTK_GPS_MT6620)
    PRODUCT_PROPERTY_OVERRIDES += gps.solution.combo.chip=1
  endif
  ifeq ($(strip $(MTK_GPS_CHIP)), MTK_GPS_MT6628)
    PRODUCT_PROPERTY_OVERRIDES += gps.solution.combo.chip=1
  endif
  ifeq ($(strip $(MTK_GPS_CHIP)), MTK_GPS_MT3332)
    PRODUCT_PROPERTY_OVERRIDES += gps.solution.combo.chip=0
  endif
endif

ifeq ($(strip $(MTK_NAND_UBIFS_SUPPORT)),yes)
  PRODUCT_PACKAGES += mkfs_ubifs \
                      ubinize \
            mtdinfo \
         ubiupdatevol \
         ubirmvol \
         ubimkvol \
         ubidetach \
         ubiattach \
         ubinfo \
         ubiformat
endif

ifeq ($(strip $(MTK_EXTERNAL_MODEM_SLOT)),2)
  PRODUCT_PROPERTY_OVERRIDES += \
  ril.external.md=2
else
  ifeq ($(strip $(MTK_EXTERNAL_MODEM_SLOT)),1)
    PRODUCT_PROPERTY_OVERRIDES += \
    ril.external.md=1
  else
    PRODUCT_PROPERTY_OVERRIDES += \
    ril.external.md=0
  endif
endif

ifeq ($(strip $(MTK_LIVEWALLPAPER_APP)), yes)
  PRODUCT_PACKAGES += LiveWallpapers \
                      LiveWallpapersPicker \
                      MagicSmokeWallpapers \
                      VisualizationWallpapers \
                      Galaxy4 \
                      HoloSpiralWallpaper \
                      NoiseField \
                      PhaseBeam
endif

ifeq ($(strip $(MTK_VLW_APP)), yes)
  PRODUCT_PACKAGES += MtkVideoLiveWallpaper
endif

ifeq ($(strip $(MTK_SINA_WEIBO_SUPPORT)), yes)
  PRODUCT_PACKAGES += Sina_Weibo
endif

ifeq ($(strip $(MTK_SYSTEM_UPDATE_SUPPORT)), yes)
  PRODUCT_PACKAGES += SystemUpdate \
                      SystemUpdateAssistant
endif

ifeq ($(strip $(MTK_DATADIALOG_APP)), yes)
  PRODUCT_PACKAGES += DataDialog
endif

ifeq ($(strip $(MTK_DATA_TRANSFER_APP)), yes)
  PRODUCT_PACKAGES += DataTransfer
endif

ifeq ($(strip $(MTK_FM_SUPPORT)), yes)
  PRODUCT_PACKAGES += FMRadio
endif

ifeq (MT6620_FM,$(strip $(MTK_FM_CHIP)))
    PRODUCT_PROPERTY_OVERRIDES += \
        fmradio.driver.chip=1
endif

ifeq (MT6626_FM,$(strip $(MTK_FM_CHIP)))
    PRODUCT_PROPERTY_OVERRIDES += \
        fmradio.driver.chip=2
endif

ifeq (MT6628_FM,$(strip $(MTK_FM_CHIP)))
    PRODUCT_PROPERTY_OVERRIDES += \
        fmradio.driver.chip=3
endif

ifeq ($(strip $(MTK_BT_SUPPORT)), yes)
  ifeq ($(strip $(ANDROID_BT_JB_MR1)), yes)
    PRODUCT_PROPERTY_OVERRIDES += \
	 ro.btstack=blueangel
  endif

    PRODUCT_PACKAGES += MtkBt_MR2\
	 libbtcust_mr2 \
	 libextpbap_mr2 \
	 libextsys_mr2 \
	 libextftp_mr2 \
	 libextbip_mr2 \
	 libextbpp_mr2 \
	 libextsimap_mr2 \
	 libmtkbtextpan_mr2 \
	 libmtkbtextspp_mr2 \
	 libextmap_mr2 \
	 libexttestmode_mr2 \
	 libpppbtdun_mr2 \
	 libextftp_mr2_jni \
	 libextbpp_mr2_jni \
	 libextbip_mr2_jni \
	 libextsimap_mr2_jni \
	 libextdun_mr2_jni \
	 libextmap_mr2_jni \
	 libextsys_mr2_jni \
	 btlogmask_mr2 \
	 btconfig_mr2 \
	 libbtpcm_mr2 \
	 libbtsniff_mr2 \
	 mtkbt_mr2 \
	 libbtsession \
	 libextadvanced_jni \
	 bluetooth.blueangel \
	 libaudio.a2dp.blueangel 
      ifeq ($(strip $(MTK_WLANBT_SINGLEANT)), yes)
	 PRODUCT_PACKAGES += libwifiwmt_mr2
      endif

    PRODUCT_PACKAGES += MtkBt \
        libbtcusttable \
        libbtcust \
        libmtkbtextadp \
        libextpbap \
        libextavrcp \
        libextopp \
        libextsys \
        libextftp \
        libmtkbtextadpa2dp \
        libmtka2dp \
        libextbip \
        libextbpp \
        libexthid \
        libextsimap \
        libextjsr82 \
        libmtkbtextpan \
        libextmap \
        libmtkbtextspp \
        libexttestmode \
        libpppbtdun \
        libextopp_jni \
        libexthid_jni \
        libextpan_jni \
        libextftp_jni \
        libextbpp_jni \
        libextbip_jni \
        libextpbap_jni \
        libextavrcp_jni \
        libextsimap_jni \
        libextdun_jni \
        libextmap_jni \
        libextsys_jni \
        btlogmask \
        btconfig \
        libbtpcm \
        libbtsniff \
        mtkbt
      ifeq ($(strip $(MTK_WLANBT_SINGLEANT)), yes)
        PRODUCT_PACKAGES += libwifiwmt
      endif

endif

ifeq ($(strip $(MTK_DT_SUPPORT)),yes)
    ifneq ($(strip $(EVDO_DT_SUPPORT)),yes)
        ifeq ($(strip $(MTK_MDLOGGER_SUPPORT)),yes)
            PRODUCT_PACKAGES += \
                ExtModemLog \
                libextmdlogger_ctrl_jni \
                libextmdlogger_ctrl \
                extmdlogger
        endif
    endif
endif

ifeq ($(strip $(MTK_ENGINEERMODE_APP)), yes)
  PRODUCT_PACKAGES += EngineerMode 
endif

ifeq ($(strip $(HAVE_MATV_FEATURE)),yes)
  PRODUCT_PACKAGES += MtvPlayer \
                      MATVEM    \
                      com.mediatek.atv.adapter
endif

ifneq ($(strip $(MTK_LCM_PHYSICAL_ROTATION)),)
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.hwrotation=$(MTK_LCM_PHYSICAL_ROTATION)
endif

ifeq ($(strip $(MTK_SHARE_MODEM_CURRENT)),2)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.current.share_modem=2
else
  ifeq ($(strip $(MTK_SHARE_MODEM_CURRENT)),1)
    PRODUCT_PROPERTY_OVERRIDES += \
      ril.current.share_modem=1
  else
    PRODUCT_PROPERTY_OVERRIDES += \
      ril.current.share_modem=0
  endif
endif

ifeq ($(strip $(MTK_FM_TX_SUPPORT)), yes)
  PRODUCT_PACKAGES += FMTransmitter
endif

ifeq ($(strip $(MTK_SOUNDRECORDER_APP)),yes)
  PRODUCT_PACKAGES += SoundRecorder
endif

ifeq ($(strip $(MTK_DM_APP)),yes)
  PRODUCT_PACKAGES += dm
endif

ifeq ($(strip $(MTK_WEATHER3D_WIDGET)), yes)
  ifneq ($(strip $(MTK_TABLET_PLATFORM)), yes)
    ifneq (,$(filter hdpi xhdpi,$(MTK_PRODUCT_LOCALES)))
      PRODUCT_PACKAGES += Weather3DWidget
    endif
  endif
endif

ifeq ($(strip $(MTK_LAUNCHERPLUS_APP)),yes)
  PRODUCT_PACKAGES += LauncherPlus \
                      MoreApp
  PRODUCT_PROPERTY_OVERRIDES += \
    launcherplus.allappsgrid=2d
endif

ifeq ($(strip $(MTK_LAUNCHER_ALLAPPSGRID)), yes)
  PRODUCT_PROPERTY_OVERRIDES += \
          launcher2.allappsgrid=3d_20
endif

ifeq ($(strip $(MTK_LOCKSCREEN_TYPE)),2)
  PRODUCT_PACKAGES += MtkWallPaper
endif

ifneq ($(strip $(MTK_LOCKSCREEN_TYPE)),)
  PRODUCT_PROPERTY_OVERRIDES += \
    curlockscreen=$(MTK_LOCKSCREEN_TYPE)
endif

ifeq ($(strip $(MTK_IME_SUPPORT)),yes)
  PRODUCT_PACKAGES += MediatekIME
endif

ifeq ($(strip $(MTK_ANDROIDFACTORYMODE_APP)),yes)
  PRODUCT_PACKAGES += AndroidFactoryMode
endif

ifeq ($(strip $(MTK_OMA_DOWNLOAD_SUPPORT)),yes)
  PRODUCT_PACKAGES += Browser \
                      DownloadProvider
endif

ifeq ($(strip $(MTK_OMACP_SUPPORT)),yes)
  PRODUCT_PACKAGES += Omacp
endif
ifeq ($(strip $(MTK_VIDEO_THUMBNAIL_PLAY_SUPPORT)),yes)
  PRODUCT_PACKAGES += libjtranscode
endif
ifeq ($(strip $(MTK_WIFI_P2P_SUPPORT)),yes)
  PRODUCT_PACKAGES += \
    WifiContactSync \
    WifiP2PWizardy \
    FileSharingServer \
    FileSharingClient \
    UPnPAV \
    WifiWsdsrv \
    bonjourExplorer
endif

ifeq ($(strip $(MTK_MDLOGGER_SUPPORT)),yes)
  PRODUCT_PACKAGES += \
    dualmdlogger \
    mdlogger
endif

ifeq ($(strip $(CUSTOM_KERNEL_TOUCHPANEL)),generic)
  PRODUCT_PACKAGES += Calibrator
endif

ifeq ($(strip $(MTK_FILEMANAGER_APP)), yes)
  PRODUCT_PACKAGES += FileManager
endif

ifeq ($(strip $(MTK_ENGINEERMODE_APP)), yes)
  PRODUCT_PACKAGES += ActivityNetwork
endif

ifneq ($(findstring OP03, $(strip $(OPTR_SPEC_SEG_DEF))),)
  PRODUCT_PACKAGES += SimCardAuthenticationService
endif

ifeq ($(strip $(MTK_NFC_SUPPORT)), yes)
  PRODUCT_PACKAGES += NxpSecureElement
endif

ifeq ($(strip $(MTK_NFC_OMAAC_SUPPORT)),yes)
  PRODUCT_PACKAGES += SmartcardService
  PRODUCT_PACKAGES += org.simalliance.openmobileapi
  PRODUCT_PACKAGES += org.simalliance.openmobileapi.xml
  PRODUCT_PACKAGES += libassd
endif

ifeq ($(strip $(MTK_APKINSTALLER_APP)), yes)
  PRODUCT_PACKAGES += APKInstaller
endif

ifeq ($(strip $(MTK_SMSREG_APP)), yes)
  PRODUCT_PACKAGES += SmsReg
endif

ifeq ($(strip $(GEMINI)),yes)
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.mediatek.gemini_support=true
else
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.mediatek.gemini_support=false
endif

ifeq ($(strip $(MTK_ENGINEERMODE_INTERNAL_APP)), yes)
  PRODUCT_PACKAGES += InternalEngineerMode
endif

ifeq ($(strip $(MTK_STEREO3D_WALLPAPER_APP)), yes)
  PRODUCT_PACKAGES += Stereo3DWallpaper
endif

ifeq ($(strip $(MTK_WEATHER3D_WIDGET)), yes)
    PRODUCT_PACKAGES += Weather3DWidget
endif

ifeq ($(strip $(MTK_YMCAPROP_SUPPORT)),yes)
  PRODUCT_COPY_FILES += mediatek/packages/yahoo_tracking/ymca.properties:system/yahoo/com.yahoo.mobile.client.android.news/ymca.properties
endif

ifeq ($(MTK_BACKUPANDRESTORE_APP),yes)
  PRODUCT_PACKAGES += BackupAndRestore
endif

ifeq ($(strip $(MTK_NOTEBOOK_SUPPORT)),yes)
  PRODUCT_PACKAGES += NoteBook
endif

ifeq ($(strip $(MTK_BWC_SUPPORT)), yes)
    PRODUCT_PACKAGES += libbwc
endif

ifeq ($(strip $(MTK_GPU_SUPPORT)), yes)
   ifeq ($(MTK_PLATFORM),$(filter $(MTK_PLATFORM),MT6572))
       PRODUCT_PACKAGES +=       \
               gralloc.mt6572    \
               libMali           \
               libGLESv1_CM_mali \
               libGLESv2_mali    \
               libEGL_mali
   endif
endif

# Todos is a common feature on JB
PRODUCT_PACKAGES += Todos

ifeq ($(strip $(MTK_DT_SUPPORT)),yes)
  PRODUCT_PACKAGES += ip-up \
                      ip-down \
                      ppp_options \
                      chap-secrets \
                      init.gprs-pppd
endif

ifdef OPTR_SPEC_SEG_DEF
  ifneq ($(strip $(OPTR_SPEC_SEG_DEF)),NONE)
    OPTR := $(word 1,$(subst _,$(space),$(OPTR_SPEC_SEG_DEF)))
    SPEC := $(word 2,$(subst _,$(space),$(OPTR_SPEC_SEG_DEF)))
    SEG  := $(word 3,$(subst _,$(space),$(OPTR_SPEC_SEG_DEF)))
    $(call inherit-product-if-exists, mediatek/operator/$(OPTR)/$(SPEC)/$(SEG)/optr_apk_config.mk)

# Todo:
# obsolete this section's configuration for operator project resource overlay
# once all operator related overlay resource moved to custom folder
    PRODUCT_PACKAGE_OVERLAYS += mediatek/operator/$(OPTR)/$(SPEC)/$(SEG)/OverLayResource
# End

    PRODUCT_PROPERTY_OVERRIDES += \
      ro.operator.optr=$(OPTR) \
      ro.operator.spec=$(SPEC) \
      ro.operator.seg=$(SEG)
  endif
endif

ifeq ($(strip $(GEMINI)), yes)
  ifeq ($(OPTR_SPEC_SEG_DEF),NONE)
    PRODUCT_PACKAGES += StkSelection
  endif
  ifeq (OP01,$(word 1,$(subst _, ,$(OPTR_SPEC_SEG_DEF))))
    PRODUCT_PACKAGES += StkSelection
  endif
  ifndef OPTR_SPEC_SEG_DEF
    PRODUCT_PACKAGES += StkSelection
  endif
endif

ifeq ($(strip $(MTK_DATAREG_APP)),yes)
  PRODUCT_PACKAGES += DataReg
  PRODUCT_PACKAGES += DataRegSecrets
  PRODUCT_PACKAGES += DataRegDefault.properties
endif

ifeq (yes,$(strip $(MTK_FD_SUPPORT)))
# Only support the format: n.m (n:1 or 1+ digits, m:Only 1 digit) or n (n:integer)
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.radio.fd.counter=15

    PRODUCT_PROPERTY_OVERRIDES += \
        persist.radio.fd.off.counter=5

    PRODUCT_PROPERTY_OVERRIDES += \
        persist.radio.fd.r8.counter=15

    PRODUCT_PROPERTY_OVERRIDES += \
        persist.radio.fd.off.r8.counter=5
endif

ifeq ($(strip $(MTK_COMBO_SUPPORT)), yes)
    PRODUCT_PROPERTY_OVERRIDES += persist.mtk.wcn.combo.chipid=-1
endif

ifeq ($(strip $(MTK_WVDRM_SUPPORT)),yes)
  PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
  PRODUCT_PACKAGES += \
    com.google.widevine.software.drm.xml \
    com.google.widevine.software.drm \
    libdrmwvmplugin \
    libwvm \
    libdrmdecrypt \
    libWVStreamControlAPI_L3 \
    libwvdrm_L3
else
  PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=false
endif

ifeq ($(strip $(MTK_DRM_APP)),yes)
  PRODUCT_PACKAGES += \
    libdrmmtkplugin \
    drm_chmod \
    libdcfdecoderjni
endif

ifeq (yes,$(strip $(MTK_FM_SUPPORT)))
    PRODUCT_PROPERTY_OVERRIDES += \
        fmradio.driver.enable=1
else
    PRODUCT_PROPERTY_OVERRIDES += \
        fmradio.driver.enable=0
endif

#
# MediaTek resource overlay configuration
#
$(foreach cf,$(RESOURCE_OVERLAY_SUPPORT), \
  $(eval # do NOT modify the overlay resource paths order) \
  $(eval # 1. project level resource overlay) \
  $(eval _project_overlay_dir := $(MTK_ROOT_CUSTOM)/$(TARGET_PRODUCT)/resource_overlay/$(cf)) \
  $(if $(wildcard $(_project_overlay_dir)), \
    $(eval PRODUCT_PACKAGE_OVERLAYS += $(_project_overlay_dir)) \
    , \
   ) \
  $(eval # 2. operator spec. resource overlay) \
  $(eval _operator_overlay_dir := $(MTK_ROOT_CUSTOM)/$(word 1,$(subst _, ,$(OPTR_SPEC_SEG_DEF)))/resource_overlay/$(cf)) \
  $(if $(wildcard $(_operator_overlay_dir)), \
    $(eval PRODUCT_PACKAGE_OVERLAYS += $(_operator_overlay_dir)) \
    , \
   ) \
  $(eval # 3. product line level resource overlay) \
  $(eval _product_line_overlay_dir := $(MTK_ROOT_CUSTOM)/$(PRODUCT)/resource_overlay/$(cf)) \
  $(if $(wildcard $(_product_line_overlay_dir)), \
    $(eval PRODUCT_PACKAGE_OVERLAYS += $(_product_line_overlay_dir)) \
    , \
   ) \
  $(eval # 4. common level(v.s android default) resource overlay) \
  $(eval _common_overlay_dir := $(MTK_ROOT_CUSTOM)/common/resource_overlay/$(cf)) \
  $(if $(wildcard $(_common_overlay_dir)), \
    $(eval PRODUCT_PACKAGE_OVERLAYS += $(_common_overlay_dir)) \
    , \
   ) \
 )

ifeq (yes,$(strip $(MTK_NFC_SUPPORT)))
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
                        frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml
  PRODUCT_PACKAGES += Nfc \
            Tag \
                      nfcc.default
  PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C
endif

ifeq ($(strip $(MTK_NFC_SUPPORT)), yes)
  ifeq ($(strip $(MTK_NFC_APP_SUPPORT)), yes)
    PRODUCT_PACKAGES += NFCTagMaster
  endif
endif

ifeq ($(strip $(HAVE_SRSAUDIOEFFECT_FEATURE)),yes)
  PRODUCT_PACKAGES += SRSTruMedia
  PRODUCT_PACKAGES += libsrsprocessing
endif

ifeq ($(strip $(MTK_WEATHER_WIDGET_APP)), yes)
    PRODUCT_PACKAGES += MtkWeatherWidget
endif

ifeq ($(strip $(MTK_WORLD_CLOCK_WIDGET_APP)), yes)
    PRODUCT_PACKAGES += MtkWorldClockWidget
endif

ifeq ($(strip $(MTK_FIRST_MD)),1)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.first.md=1
endif
ifeq ($(strip $(MTK_FIRST_MD)),2)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.first.md=2
endif

ifeq ($(strip $(MTK_FLIGHT_MODE_POWER_OFF_MD)),yes)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.flightmode.poweroffMD=1
else
    PRODUCT_PROPERTY_OVERRIDES += \
      ril.flightmode.poweroffMD=0
endif

ifeq ($(strip $(MTK_FIRST_MD)),1)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.first.md=1
endif
ifeq ($(strip $(MTK_FIRST_MD)),2)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.first.md=2
endif

ifeq ($(strip $(MTK_TELEPHONY_MODE)),0)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.telephony.mode=0
endif
ifeq ($(strip $(MTK_TELEPHONY_MODE)),1)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.telephony.mode=1
endif
ifeq ($(strip $(MTK_TELEPHONY_MODE)),2)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.telephony.mode=2
endif
ifeq ($(strip $(MTK_TELEPHONY_MODE)),3)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.telephony.mode=3
endif
ifeq ($(strip $(MTK_TELEPHONY_MODE)),4)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.telephony.mode=4
endif
ifeq ($(strip $(MTK_TELEPHONY_MODE)),5)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.telephony.mode=5
endif
ifeq ($(strip $(MTK_TELEPHONY_MODE)),6)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.telephony.mode=6
endif
ifeq ($(strip $(MTK_TELEPHONY_MODE)),7)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.telephony.mode=7
endif
ifeq ($(strip $(MTK_TELEPHONY_MODE)),8)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.telephony.mode=8
endif

ifeq ($(strip $(MTK_AGPS_APP)), yes)
  PRODUCT_PACKAGES += LocationEM
  PRODUCT_COPY_FILES += mediatek/frameworks/base/epo/etc/epo_conf.xml:system/etc/epo_conf.xml
  PRODUCT_COPY_FILES += mediatek/frameworks/base/agps/etc/agps_profiles_conf.xml:system/etc/agps_profiles_conf.xml
endif

ifeq (yes,$(strip $(FEATURE_FTM_AUDIO_TEST)))
  PRODUCT_COPY_FILES += mediatek/custom/common/factory/res/sound/testpattern1.wav:system/res/sound/testpattern1.wav
ifeq (yes,$(strip $(FEATURE_FTM_AUDIO_AUTOTEST)))
  PRODUCT_COPY_FILES += mediatek/custom/common/factory/res/sound/ringtone.wav:system/res/sound/ringtone.wav
endif
endif

PRODUCT_PACKAGES += libsec
PRODUCT_PACKAGES += sbchk
PRODUCT_PACKAGES += S_ANDRO_SFL.ini
PRODUCT_PACKAGES += S_SECRO_SFL.ini

PRODUCT_BRAND := alps
PRODUCT_MANUFACTURER := alps

PRODUCT_COPY_FILES += mediatek/frameworks/base/telephony/etc/apns-conf.xml:system/etc/apns-conf.xml
PRODUCT_COPY_FILES += mediatek/frameworks/base/telephony/etc/spn-conf.xml:system/etc/spn-conf.xml

# for USB Accessory Library/permission
# Mark for early porting in JB
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
PRODUCT_PACKAGES += com.android.future.usb.accessory

# System property for MediaTek ANR pre-dump.
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.mtk-stack-trace-file=/data/anr/mtk_traces.txt

ifeq ($(strip $(MTK_WLAN_SUPPORT)),yes)
  PRODUCT_PROPERTY_OVERRIDES += \
    mediatek.wlan.chip=$(MTK_WLAN_CHIP)

  PRODUCT_PROPERTY_OVERRIDES += \
    mediatek.wlan.module.postfix="_"$(shell echo $(strip $(MTK_WLAN_CHIP)) | tr A-Z a-z)
endif


ifeq ($(strip $(MTK_RADIOOFF_POWER_OFF_MD)),yes)
  PRODUCT_PROPERTY_OVERRIDES += \
    ril.radiooff.poweroffMD=1
else
    PRODUCT_PROPERTY_OVERRIDES += \
      ril.radiooff.poweroffMD=0
endif

#MT6575/77 MDP Packages
ifeq ($(MTK_PLATFORM),$(filter $(MTK_PLATFORM),MT6575 MT6575T MT6577))
   PRODUCT_PACKAGES += \
      mdpd \
      mdpserver \
      libmhalmdp
endif

ifeq ($(strip $(MTK_TER_SERVICE)),yes)
  PRODUCT_PROPERTY_OVERRIDES += \
    ter.service.enable=1
else
  PRODUCT_PROPERTY_OVERRIDES += \
    ter.service.enable=0
endif


$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/lohit-fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product-if-exists, mediatek/frameworks-ext/base/data/sounds/AudioMtk.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AllAudio.mk)
$(call inherit-product-if-exists, external/svox/pico/lang/all_pico_languages.mk)
$(call inherit-product-if-exists, mediatek/external/sip/sip.mk)
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)
$(call inherit-product-if-exists, external/cibu-fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/fonts/openfont/fonts.mk)

ifeq ($(strip $(MTK_VOICE_UNLOCK_SUPPORT)),yes)
    $(call inherit-product-if-exists, mediatek/frameworks/base/voicecommand/cfg/voicecommand.mk)
else
        ifeq ($(strip $(MTK_VOICE_UI_SUPPORT)),yes)
            $(call inherit-product-if-exists, mediatek/frameworks/base/voicecommand/cfg/voicecommand.mk)
        endif
endif
#
ifeq ($(strip $(MTK_GAMELOFT_AVENGERS_ULC_CN_APP)), yes)
  PRODUCT_PACKAGES += Avengers_ULC_CN
endif

ifeq ($(strip $(MTK_GAMELOFT_AVENGERS_ULC_WW_APP)), yes)
  PRODUCT_PACKAGES += Avengers_ULC_WW
endif

ifeq ($(strip $(MTK_GAMELOFT_LBC_ULC_CN_APP)), yes)
  PRODUCT_PACKAGES += LittleBigCity_ULC_CN
endif

ifeq ($(strip $(MTK_GAMELOFT_LBC_ULC_WW_APP)), yes)
  PRODUCT_PACKAGES += LittleBigCity_ULC_WW
endif

ifeq ($(strip $(MTK_GAMELOFT_WONDERZOO_ULC_CN_APP)), yes)
  PRODUCT_PACKAGES += WonderZoo_ULC_CN
endif

ifeq ($(strip $(MTK_GAMELOFT_WONDERZOO_ULC_WW_APP)), yes)
  PRODUCT_PACKAGES += WonderZoo_ULC_WW
endif

ifeq ($(strip $(MTK_GAMELOFT_GLL_ULC_CN_APP)), yes)
  PRODUCT_PACKAGES += GLLive_ULC_CN
endif

ifeq ($(strip $(MTK_GAMELOFT_GLL_ULC_WW_APP)), yes)
  PRODUCT_PACKAGES += GLLive_ULC_WW
endif
#
ifeq ($(strip $(MTK_DENA_MOBAGE_APP)), yes)
  PRODUCT_PACKAGES += Mobage
  PRODUCT_PACKAGES += libmobage.so
endif

ifeq ($(strip $(MTK_DENA_MINIROSANGUO_APP)), yes)
  PRODUCT_PACKAGES += MiniRoSanguo
  PRODUCT_PACKAGES += libmobage.so
  PRODUCT_PACKAGES += libgameocem.so
  PRODUCT_PACKAGES += libcocosdenshionocem.so
endif

ifeq ($(strip $(MTK_REGIONALPHONE_SUPPORT)),yes)
  PRODUCT_PACKAGES += RegionalPhoneManager
endif
ifeq ($(strip $(MTK_RILD_READ_IMSI)),yes)
  PRODUCT_PROPERTY_OVERRIDES += \
  ril.read.imsi=1
endif

ifeq ($(strip $(MTK_MOBILE_MANAGEMENT)), yes)
    PRODUCT_PACKAGES += mac_permissions.xml
endif
ifeq ($(strip $(MTK_PERMISSION_CONTROL)),yes)
  PRODUCT_PACKAGES += PermissionControl
endif

ifeq ($(strip $(MTK_BT_40_SUPPORT)),yes)
  PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml
endif

PRODUCT_PACKAGES += ppl_agent
ifeq ($(strip $(MTK_PRIVACY_PROTECTION_LOCK)),yes)
  PRODUCT_PACKAGES += PrivacyProtectionLock
endif

  PRODUCT_PACKAGES += CreateCode

ifeq ($(strip $(SU_FOR_SYSTEM_APP)), yes)
  PRODUCT_PACKAGES += su
endif

ifeq ($(strip $(GOOGLE_MAPS)), yes)
  PRODUCT_PACKAGES += GoogleServicesFramework
  PRODUCT_PACKAGES += NetworkLocation
  PRODUCT_PACKAGES += GoogleMaps
endif

ifeq ($(strip $(GOOGLE_PINYIN_IME)), yes)
  PRODUCT_PACKAGES += PinyinIME
endif

ifeq ($(strip $(GOOGLE_PLAY)), yes)
  PRODUCT_PACKAGES += GoogleServicesFramework
  PRODUCT_PACKAGES += GooglePlayServices
  PRODUCT_PACKAGES += GoogleLoginService
  PRODUCT_PACKAGES += Phonesky
  PRODUCT_PACKAGES += SetupWizard
endif

ifeq ($(strip $(QQ_INPUT_IME)), yes)
  PRODUCT_PACKAGES += QQInput
endif

ifeq ($(strip $(GEENK_SPEECH_SERVICE)), yes)
  PRODUCT_PACKAGES += SpeechService
endif

ifeq ($(strip $(GEENK_INSTALL_APK_SERVICE)), yes)
  PRODUCT_PACKAGES += InstallApkService
endif

ifeq ($(strip $(YUDI_APP)), yes)
  PRODUCT_PACKAGES += UpgradeService
endif

ifeq ($(strip $(FALCONROID_SERVICE)), yes)
  PRODUCT_PACKAGES += BarcodeService
endif

ifeq ($(strip $(QQ_PHONEBOOK)),yes)
  PRODUCT_PACKAGES += QQPhoneBook
endif

ifeq ($(strip $(UPDATE_TIME_SERVICE)), yes)
  PRODUCT_PACKAGES += UpdateTimeService
endif

ifeq ($(strip $(HY_CUSTOM_RECEIVER)), yes)
  PRODUCT_PACKAGES += HyCustomReceiver
endif

ifeq ($(strip $(BARCODE_ADMIN)), yes)
  PRODUCT_PACKAGES += BarcodeAdmin
endif

ifeq ($(strip $(GEENK_S5_TEST_APK)), yes)
  PRODUCT_PACKAGES += GpsTest
  PRODUCT_PACKAGES += KeyTest
  PRODUCT_PACKAGES += BarcodeTest
endif

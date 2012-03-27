ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(BOARD_HAVE_BLUETOOTH_BCM),true)
LOCAL_CFLAGS += \
	-DBOARD_HAVE_BLUETOOTH_BCM 
endif
LOCAL_CFLAGS += -DBUILDCFG 

LOCAL_PRELINK_MODULE:=false
LOCAL_SRC_FILES:= \
    ./dm/bta_dm_ci.c \
    ./dm/bta_dm_act.c \
    ./dm/bta_dm_pm.c \
    ./dm/bta_dm_main.c \
    ./dm/bta_dm_cfg.c \
    ./dm/bta_dm_api.c \
    ./dm/bta_dm_sco.c \
    ./op/bta_op_vcal.c \
    ./op/bta_opc_utils.c \
    ./op/bta_opc_main.c \
    ./op/bta_opc_api.c \
    ./op/bta_opc_act.c \
    ./op/bta_ops_utils.c \
    ./op/bta_op_vcard.c \
    ./op/bta_ops_main.c \
    ./op/bta_op_vnote.c \
    ./op/bta_op_fmt.c \
    ./op/bta_ops_act.c \
    ./op/bta_ops_api.c \
    ./ma/bta_mse_ci.c \
    ./ma/bta_mse_api.c \
    ./ma/bta_mse_act.c \
    ./ma/bta_mse_sdp.c \
    ./ma/bta_ma_util.c \
    ./ma/bta_ma_api.c \
    ./ma/bta_mse_utils.c \
    ./ma/bta_mse_main.c \
    ./ma/bta_mse_cfg.c \
    ./gatt/bta_gattc_api.c \
    ./gatt/bta_gatts_act.c \
    ./gatt/bta_gatts_main.c \
    ./gatt/bta_gattc_utils.c \
    ./gatt/bta_gattc_ci.c \
    ./gatt/bta_gatts_api.c \
    ./gatt/bta_gattc_main.c \
    ./gatt/bta_gattc_act.c \
    ./gatt/bta_gattc_cache.c \
    ./gatt/bta_gatts_utils.c \
    ./hd/bta_hd_cfg.c \
    ./hd/bta_hd_api.c \
    ./hd/bta_hd_main.c \
    ./hd/bta_hd_act.c \
    ./ag/bta_ag_sdp.c \
    ./ag/bta_ag_sco.c \
    ./ag/bta_ag_cfg.c \
    ./ag/bta_ag_main.c \
    ./ag/bta_ag_api.c \
    ./ag/bta_ag_rfc.c \
    ./ag/bta_ag_act.c \
    ./ag/bta_ag_cmd.c \
    ./ag/bta_ag_ci.c \
    ./ag/bta_ag_at.c \
    ./hh/bta_hh_cfg.c \
    ./hh/bta_hh_act.c \
    ./hh/bta_hh_api.c \
    ./hh/bta_hh_utils.c \
    ./hh/bta_hh_main.c \
    ./dg/bta_dg_act.c \
    ./dg/bta_dg_main.c \
    ./dg/bta_dg_api.c \
    ./dg/bta_dg_cfg.c \
    ./dg/bta_dg_ci.c \
    ./ft/bta_ft_cfg.c \
    ./ft/bta_ftc_main.c \
    ./ft/bta_fts_utils.c \
    ./ft/bta_fts_sdp.c \
    ./ft/bta_ftc_api.c \
    ./ft/bta_ftc_act.c \
    ./ft/bta_fts_act.c \
    ./ft/bta_fts_api.c \
    ./ft/bta_fts_main.c \
    ./ft/bta_ftc_utils.c \
    ./pb/bta_pbs_act.c \
    ./pb/bta_pbs_api.c \
    ./pb/bta_pbs_sdp.c \
    ./pb/bta_pbs_utils.c \
    ./pb/bta_pbs_ci.c \
    ./pb/bta_pbs_main.c \
    ./pb/bta_pbs_cfg.c \
    ./fs/bta_fs_ci.c \
    ./fs/bta_fs_cfg.c \
    ./pan/bta_pan_main.c \
    ./pan/bta_pan_ci.c \
    ./pan/bta_pan_act.c \
    ./pan/bta_pan_api.c \
    ./av/bta_av_act.c \
    ./av/bta_av_ci.c \
    ./av/bta_av_api.c \
    ./av/bta_av_aact.c \
    ./av/bta_av_main.c \
    ./av/bta_av_cfg.c \
    ./av/bta_av_ssm.c \
    ./av/bta_av_sbc.c \
    ./ar/bta_ar.c \
    ./hl/bta_hl_act.c \
    ./hl/bta_hl_api.c \
    ./hl/bta_hl_main.c \
    ./hl/bta_hl_utils.c \
    ./hl/bta_hl_sdp.c \
    ./hl/bta_hl_ci.c \
    ./sys/bta_sys_main.c \
    ./sys/bta_sys_ci.c \
    ./sys/bta_sys_conn.c \
    ./sys/bta_sys_cfg.c \
    ./sys/ptim.c \
    ./sys/bd.c \
    ./sys/utl.c

LOCAL_MODULE := libbt-brcm_bta 
LOCAL_MODULE_TAGS := eng 
LOCAL_SHARED_LIBRARIES := libcutils libc

LOCAL_C_INCLUDES+= . \
                   $(LOCAL_PATH)/include \
                   $(LOCAL_PATH)/sys \
                   $(LOCAL_PATH)/dm \
                   $(LOCAL_PATH)/../gki/common \
                   $(LOCAL_PATH)/../gki/ulinux \
                   $(LOCAL_PATH)/../include \
                   $(LOCAL_PATH)/../stack/include \
                   $(LOCAL_PATH)/../stack/btm \
                   $(LOCAL_PATH)/../hcis \
                   $(LOCAL_PATH)/../hcis/patchram \
                   $(LOCAL_PATH)/../udrv/include \
                   $(LOCAL_PATH)/../brcm/include \

include $(BUILD_STATIC_LIBRARY)

endif  # TARGET_SIMULATOR != true
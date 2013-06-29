$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# The gps config appropriate for this device

# common msmmsm8960 configs
$(call inherit-product, device/zte/msm8960-common/msm8960.mk)
$(call inherit-product, device/common/gps/gps_as_supl.mk)

$(call inherit-product-if-exists, vendor/zte/dana/dana-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/dana/overlay

LOCAL_PATH := device/zte/dana
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#device ramdisk setup
PRODUCT_COPY_FILES += \
     device/zte/dana/ramdisk/init.dana.rc:root/init.dana.rc \
     device/zte/dana/ramdisk/init.dana.usb.rc:root/init.dana.usb.rc \
     device/zte/dana/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
     device/zte/dana/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
     device/zte/dana/ramdisk/init.rc:root/init.rc \
     device/zte/dana/ramdisk/fstab.dana:root/fstab.dana \
     device/zte/dana/ramdisk/ueventd.dana.rc:root/ueventd.dana.rc \
     device/zte/dana/ramdisk/usbconfig:root/sbin/usbconfig \
     device/zte/dana/ramdisk/logo.bmp:root/logo.bmp

#device idc setup
PRODUCT_COPY_FILES += \
		      device/zte/dana/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
		      device/zte/dana/idc/qwerty.idc:system/usr/idc/qwerty.idc \
		      device/zte/dana/idc/syna-touchscreen.idc:system/usr/idc/syna-touchscreen.idc
#keychars
PRODUCT_COPY_FILES += \
     device/zte/dana/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
     device/zte/dana/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
     device/zte/dana/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
     device/zte/dana/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

#keylayout
PRODUCT_COPY_FILES += \
     device/zte/dana/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
     device/zte/dana/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
     device/zte/dana/keylayout/Fts-touchscreen.kl:system/usr/keylayout/Fts-touchscreen.kl \
     device/zte/dana/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
     device/zte/dana/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
     device/zte/dana/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
     device/zte/dana/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
     device/zte/dana/keylayout/syna-touchscreen.kl:system/usr/keylayout/syna-touchscreen.k

#modules
PRODUCT_COPY_FILES += \
     device/zte/dana/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
     device/zte/dana/modules/bluetooth-power.ko:system/lib/modules/bluetooth-power.ko \
     device/zte/dana/modules/dma_test.ko:system/lib/modules/dma_test.ko \
     device/zte/dana/modules/eeprom_93cx6.ko:system/lib/modules/eeprom_93cx6.ko \
     device/zte/dana/modules/evbug.ko:system/lib/modules/evbug.ko \
     device/zte/dana/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
     device/zte/dana/modules/ks8851.ko:system/lib/modules/ks8851.ko \
     device/zte/dana/modules/lcd.ko:system/lib/modules/lcd.ko \
     device/zte/dana/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
     device/zte/dana/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
     device/zte/dana/modules/qce40.ko:system/lib/modules/qce40.ko \
     device/zte/dana/modules/qcedev.ko:system/lib/modules/qcedev.ko \
     device/zte/dana/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
     device/zte/dana/modules/radio-iris-transport.ko:system/lib/modules/radio-iris-transport.ko \
     device/zte/dana/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
     device/zte/dana/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
     device/zte/dana/modules/spidev.ko:system/lib/modules/spidev.ko \
     device/zte/dana/modules/wlan.ko:system/lib/modules/wlan.ko \
     device/zte/dana/modules/zte_krait_oc.ko:system/lib/modules/zte_krait_oc.ko

#firmwares
PRODUCT_COPY_FILES += \
     device/zte/dana/firmware/cyttsp_8960_cdp.hex:system/etc/firmware/cyttsp_8960_cdp.hex \
     device/zte/dana/firmware/PR1183396_s2202_32313038.img:system/etc/firmware/PR1183396_s2202_32313038.img \
     device/zte/dana/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
     device/zte/dana/firmware/vidc.b00:system/etc/firmware/vidc.b00 \
     device/zte/dana/firmware/vidc.b01:system/etc/firmware/vidc.b01 \
     device/zte/dana/firmware/vidc.b02:system/etc/firmware/vidc.b02 \
     device/zte/dana/firmware/vidc.b03:system/etc/firmware/vidc.b03 \
     device/zte/dana/firmware/vidcfw.elf:system/etc/firmware/vidcfw.elf \
     device/zte/dana/firmware/vidc.mdt:system/etc/firmware/vidc.mdt \
     device/zte/dana/firmware/wlan/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
     device/zte/dana/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
     device/zte/dana/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

#sensors
PRODUCT_COPY_FILES += \
     device/zte/dana/sensor/libsensor1.so:system/lib/libsensor1.so \
     device/zte/dana/sensor/libsensor_reg.so:system/lib/libsensor_reg.so \
     device/zte/dana/sensor/libyas530.so:system/lib/libyas530.so \
     device/zte/dana/sensor/sensors.qcom:system/bin/sensors.qcom

#sound config
PRODUCT_COPY_FILES += \
     device/zte/dana/dsp/snd_soc_msm/DL_REC:system/etc/snd_soc_msm//DL_REC \
     device/zte/dana/dsp/snd_soc_msm/DL_REC_2x:system/etc/snd_soc_msm//DL_REC_2x \
     device/zte/dana/dsp/snd_soc_msm/FM_A2DP_REC:system/etc/snd_soc_msm//FM_A2DP_REC \
     device/zte/dana/dsp/snd_soc_msm/FM_A2DP_REC_2x:system/etc/snd_soc_msm//FM_A2DP_REC_2x \
     device/zte/dana/dsp/snd_soc_msm/FM_Digital_Radio:system/etc/snd_soc_msm//FM_Digital_Radio \
     device/zte/dana/dsp/snd_soc_msm/FM_Digital_Radio_2x:system/etc/snd_soc_msm//FM_Digital_Radio_2x \
     device/zte/dana/dsp/snd_soc_msm/FM_REC:system/etc/snd_soc_msm//FM_REC \
     device/zte/dana/dsp/snd_soc_msm/FM_REC_2x:system/etc/snd_soc_msm//FM_REC_2x \
     device/zte/dana/dsp/snd_soc_msm/HiFi:system/etc/snd_soc_msm//HiFi \
     device/zte/dana/dsp/snd_soc_msm/HiFi_2x:system/etc/snd_soc_msm//HiFi_2x \
     device/zte/dana/dsp/snd_soc_msm/HiFi_Low_Power:system/etc/snd_soc_msm//HiFi_Low_Power \
     device/zte/dana/dsp/snd_soc_msm/HiFi_Low_Power_2x:system/etc/snd_soc_msm//HiFi_Low_Power_2x \
     device/zte/dana/dsp/snd_soc_msm/HiFi_Rec:system/etc/snd_soc_msm//HiFi_Rec \
     device/zte/dana/dsp/snd_soc_msm/HiFi_Rec_2x:system/etc/snd_soc_msm//HiFi_Rec_2x \
     device/zte/dana/dsp/snd_soc_msm/snd_soc_msm:system/etc/snd_soc_msm//snd_soc_msm \
     device/zte/dana/dsp/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm//snd_soc_msm_2x \
     device/zte/dana/dsp/snd_soc_msm/UL_DL_REC:system/etc/snd_soc_msm//UL_DL_REC \
     device/zte/dana/dsp/snd_soc_msm/UL_DL_REC_2x:system/etc/snd_soc_msm//UL_DL_REC_2x \
     device/zte/dana/dsp/snd_soc_msm/Voice_Call:system/etc/snd_soc_msm//Voice_Call \
     device/zte/dana/dsp/snd_soc_msm/Voice_Call_2x:system/etc/snd_soc_msm//Voice_Call_2x \
     device/zte/dana/dsp/snd_soc_msm/Voice_Call_IP:system/etc/snd_soc_msm//Voice_Call_IP \
     device/zte/dana/dsp/snd_soc_msm/Voice_Call_IP_2x:system/etc/snd_soc_msm//Voice_Call_IP_2x

# GPS libs
PRODUCT_COPY_FILES += \
    device/zte/dana/gps/libgps.so:/system/lib/libgps.so \
    device/zte/dana/gps/libgps.utils.so:/system/lib/libgps.utils.so \
    device/zte/dana/gps/libloc_adapter.so:/system/lib/libloc_adapter.so \
    device/zte/dana/gps/libloc_api_v02.so:/system/lib/libloc_api_v02.so \
    device/zte/dana/gps/libloc_eng.so:/system/lib/libloc_eng.so \
    device/zte/dana/gps/libloc_ext.so:/system/lib/libloc_ext.so \
    device/zte/dana/gps/liblocSDK_2.2.so:/system/lib/liblocSDK_2.2.so \
    device/zte/dana/gps/gps.default.so:/system/lib/hw/gps.default.so

#config
PRODUCT_COPY_FILES += \
     device/zte/dana/configs/audio_effects.conf:system/etc/audio_effects.conf \
     device/zte/dana/configs/init.ct_fmc.sh:system/etc/init.ct_fmc.sh \
     device/zte/dana/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
     device/zte/dana/configs/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
     device/zte/dana/configs/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
     device/zte/dana/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
     device/zte/dana/configs/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
     device/zte/dana/configs/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
     device/zte/dana/configs/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
     device/zte/dana/configs/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
     device/zte/dana/configs/init.wlanprop.sh:system/etc/init.wlanprop.sh \
     device/zte/dana/configs/media_profiles.xml:system/etc/media_profiles.xml \
     device/zte/dana/configs/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
     device/zte/dana/configs/thermald.conf:system/etc/thermald.conf \
     device/zte/dana/configs/vold.fstab:system/etc/vold.fstab \
     device/zte/dana/configs/wiperconfig.xml:system/etc/wiperconfig.xml \
     device/zte/dana/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
     device/zte/dana/configs/apns-conf.xml:system/etc/apns-conf.xml

# Torch
PRODUCT_PACKAGES += \
		Torch
# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y
# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
	persist.sys.usb.config=mtp

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Set default USB interface
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=240 \
    dalvik.vm.dexopt-data-only=1

$(call inherit-product, build/target/product/full.mk)
PRODUCT_AAPT_CONFIG := normal hdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-hdpi-dalvik-heap.mk)
PRODUCT_LOCALES  := zh_CN en_US zh_TW zh_HK hdpi 
PRODUCT_NAME := full_dana
PRODUCT_DEVICE := dana


# inherit from the proprietary version
-include vendor/htc/buzz/BoardConfigVendor.mk

# ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6j
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x02E00000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_LDPI_RECOVERY := true
BOARD_HAS_JANKY_BACKBUFFER := true

BOARD_USE_FROYO_LIBCAMERA := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_VENDOR_USE_AKMD := akm8973

BOARD_VENDOR_QCOM_AMSS_VERSION := 1355

TARGET_HARDWARE_3D := false
BOARD_HAS_LIMITED_EGL := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_ELECTRONBEAM_FRAMES := 10

BOARD_GPS_LIBRARIES := libgps librpc
BOARD_USES_GPSSHIM := true

BOARD_USES_QCOM_LIBS := true

TARGET_BOOTLOADER_BOARD_NAME := buzz
TARGET_OTA_ASSERT_DEVICE := buzz

BOARD_USE_NEW_LIBRIL_HTC := true

JS_ENGINE := v8

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x002c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00420000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0fa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0af20000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
TARGET_PREBUILT_KERNEL := device/htc/buzz/prebuilt/kernel
TARGET_RECOVERY_INITRC := device/htc/buzz/init.recovery.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/htc/buzz/recovery/recovery_ui.c

# TWRP vendorsetup.sh for NX669J

export ALLOW_MISSING_DEPENDENCIES=true

FDEVICE="NX669J"

twrp_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then 
      TWRP_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && TWRP_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$TWRP_BUILD_DEVICE" ]; then
   twrp_get_target_device
fi
    
if [ "$1" = "$FDEVICE" -o "$TWRP_BUILD_DEVICE" = "$FDEVICE" ]; then

    export LC_ALL="C"

# Device Info
    export TARGET_DEVICE_ALT="NX669J,NX669S,NX669J-UN,NX669S-UN,NX669J-EEA,NX669S-EEA"
    export TARGET_SUPPORTS_AB=true
    export TW_DEFAULT_LANGUAGE="en"
    export TW_THEME="portrait_hdpi"
    export TW_USE_TOOLBOX=true
    export TW_INCLUDE_NTFS_3G=true
    export TW_NO_SCREEN_TIMEOUT=true
    export TW_SCREEN_BLANK_ON_BOOT=false
    export TW_INPUT_BLACKLIST="hbtp_vm"
    export TW_EXCLUDE_TWRPAPP=1
    export TARGET_COPY_OUT_RECOVERY=1

# Encryption & Filesystem
    export TW_INCLUDE_CRYPTO=1
    export TW_INCLUDE_FBE=1
    export TW_USE_FSCRYPT_POLICY=2
    export TW_INCLUDE_RESETPROP=1
    export TW_INCLUDE_LIBRESETPROP=1
    export TW_INCLUDE_FUSE_EXFAT=1
    export TW_INCLUDE_NTFS_3G=1

# Debug & Tools
    export TARGET_USES_LOGD=true
    export TARGET_USES_ASHMEM=true
    export TW_NO_HAPTICS=false
    export TARGET_RECOVERY_PIXEL_FORMAT="RGBX_8888"

    # Let's log the build variables
    if [ -n "$TWRP_BUILD_LOG_FILE" -a -f "$TWRP_BUILD_LOG_FILE" ]; then
       export | grep "TW_" >> $TWRP_BUILD_LOG_FILE
       export | grep "TARGET_" >> $TWRP_BUILD_LOG_FILE
    fi
fi

add_lunch_combo twrp_NX669J-eng
add_lunch_combo twrp_NX669J-userdebug

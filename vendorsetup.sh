export ALLOW_MISSING_DEPENDENCIES=true
FDEVICE="NX669J"

fox_get_target_device() {
    local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
    if [ -n "$chkdev" ]; then
        FOX_BUILD_DEVICE="$FDEVICE"
    fi
}

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
    export LC_ALL="C"
    export OF_MAINTAINER="Dr.Brown28"
    export FOX_VERSION=$(date +%y.%m.%d)
    export FOX_BUILD_TYPE="Unofficial"
    export FOX_ARCH=arm64
    export FOX_VARIANT="12.1"
    export TARGET_DEVICE_ALT="NX669J,NX669J-EEA,NX669S"
    export FOX_AB_DEVICE=1
    export OF_SCREEN_H=2340
    export OF_STATUS_H=100
    export OF_STATUS_INDENT_LEFT=48
    export OF_STATUS_INDENT_RIGHT=48
    export OF_USE_LOCKSCREEN_BUTTON=1
    export OF_USE_TWRP_SAR_DETECT=1
    export FOX_VERSION="R11.1_0"
fi

# Allow missing dependencies
export ALLOW_MISSING_DEPENDENCIES=true

# Device codename
FDEVICE="NX669J"

# Function to get target device
fox_get_target_device() {
    local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
    if [ -n "$chkdev" ]; then
        FOX_BUILD_DEVICE="$FDEVICE"
    else
        chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
        [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
    fi
}

# If no device specified, try to determine the target
if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
    fox_get_target_device
fi

# Check if device matches
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

    # Use TWRP recovery image builder
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1

    # Locale settings
    export LC_ALL="C"

    # Build variables
    export FOX_BUILD_TYPE="Unofficial"
    export FOX_VERSION=$(date +%y.%m.%d)
    export FOX_ARCH="arm64"
    export TARGET_DEVICE_ALT="NX669J,NX69J-UN,NX669J-EEA,NX669S,NX669S-UN,NX669S-EEA"

    # A/B Partition support
    export FOX_AB_DEVICE=1

    # Status bar and screen settings
    export OF_SCREEN_H=2340
    export OF_STATUS_H=100
    export OF_STATUS_INDENT_LEFT=48
    export OF_STATUS_INDENT_RIGHT=48

    # Disable navbar toggle
    export OF_ALLOW_DISABLE_NAVBAR=0

    # Additional flags
    export FOX_DELETE_AROMAFM=1
    export FOX_USE_SPECIFIC_MAGISK_ZIP="~/magisk_canary_200122.zip"
    export OF_USE_TWRP_SAR_DETECT=1

    # Debugging and log settings
    if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
        export | grep "FOX" >> $FOX_BUILD_LOG_FILE
        export | grep "OF_" >> $FOX_BUILD_LOG_FILE
        export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
    fi

fi

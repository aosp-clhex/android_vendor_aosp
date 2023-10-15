function lunch_devices() {
    add_lunch_combo aosp_${device}-user
    add_lunch_combo aosp_${device}-userdebug
}

for device in ${devices[@]}; do
    lunch_devices
done

TWRP Device repository for 507sh (omnirom)

===========================

For chen's nougat kernel

Codename:eve

CPU:MSM8952

---------------
##How to compile:

1. Get the latest minimal-manifests-twrp sources
1.5. (use twrp-android-8.1 branch)
1.75 git clone https://github.com/TeamWin/android_device_qcom_common.git -b android-7.1 device/qcom/common
2. clone this device 
3 ./build/envsetup.sh
4. lunch omni_eve-userdebug
5. make -jX (where X is the # of your CPU threads +1) recoveryimage

---------------
##Known issue:

- usb

By wyk

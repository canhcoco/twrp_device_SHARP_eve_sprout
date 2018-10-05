TWRP Device repository for 507sh (omnirom)

===========================

Kernel:IsaacChen 3.10 kernel Android8.1(fix usb)

Codename:eve_sprout

CPU:MSM8952

---------------
##How to compile:

1. Get the latest minimal-manifests-twrp or rw sources
2. clone this device 
3 ./build/envsetup.sh
4. lunch omni_eve-userdebug
5. make -jX (where X is the # of your CPU threads +1) recoveryimage

---------------
##Known issue:

- usb

By wyk

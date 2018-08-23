#TWRP
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/fstab/twrp.fstab:recovery/root/etc/twrp.fstab 

#Kernel
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/kernel:kernel 

#Extra
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/SHARP/eve/recovery/root,root)
    
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# if fw_env.config file is provided, it will be installed into ${sysconfigdir}
# - see u-boot.inc file
SRC_URI:append = " \
    file://fw_env.config \
    file://uboot.txt.env \
    file://uboot-env-is-in-virtio-blk.cfg \
    file://0001-Load-and-save-environment-from-virtio-block-device.patch \
"

DEPENDS += "u-boot-mkenvimage-native"

UBOOT_MKENVIMAGE = "uboot-mkenvimage"

do_compile:append() {
    ${UBOOT_MKENVIMAGE} -s 0x20000 -o ${B}/uboot.env ${UNPACKDIR}/uboot.txt.env
}

do_deploy:append() {
    install -d ${DEPLOYDIR}
    install -m 0644 ${B}/uboot.env ${DEPLOYDIR}
}
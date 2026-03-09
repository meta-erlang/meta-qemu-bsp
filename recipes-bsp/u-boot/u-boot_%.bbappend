FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append:qemuall = " \
    file://uboot-env-is-in-virtio-blk.cfg \
    file://0001-Load-and-save-environment-from-virtio-block-device.patch \
"
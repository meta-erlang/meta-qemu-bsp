meta-qemu-bsp
=============

This Yocto layer provides additional qemu machines in additional to the default [QEMU machines provided by the Yocto Project](https://git.yoctoproject.org/poky/tree/README.qemu.md). The main idea is to add machines based on QEMU with additional support like using u-boot/grub as bootloader.

ARM based:

 * qemuarm-uboot, qemuarm machine configured to boot from u-boot
 * qemuarm64-uboot, qemuarm64 machine configured to boot from u-boot

## Dependencies

  URI: https://github.com/openembedded/meta-openembedded.git
  branch: master

## Patches

Please submit any patches against the meta-fwup-examples to the github issue tracker.

Maintainer: João Henrique Ferreira de Freitas `<joaohf@gmail.com>`


## References

The machines qemuarm-uboot and qemuarm64-uboot were based on [meta-qemuarm-uboot](https://github.com/ejaaskel/meta-qemuarm-uboot/). The blog post called [Yocto Emulation: Setting Up QEMU with U-Boot](https://ejaaskel.dev/yocto-emulation-setting-up-qemu-with-u-boot/) tells about how would be possible to boot qemu with u-boot.

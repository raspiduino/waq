@echo off
title WOA
qemu-system-aarch64.exe ^
-name "Windows 10 on ARM64" ^
-M virt ^
-cpu cortex-a72 ^
-smp 3 ^
--accel tcg,thread=multi ^
-m 2048 ^
-pflash QEMU_EFI.img ^
-pflash QEMU_VARS.img ^
-device VGA ^
-device nec-usb-xhci ^
-device usb-kbd ^
-device usb-mouse ^
-device usb-storage,drive=boot ^
-drive if=none,id=boot,file="woa_17134.img" ^
-device usb-storage,drive=drivercdrom ^
-drive file="virtio-win-0.1.185.iso",media=cdrom,if=none,id=drivercdrom
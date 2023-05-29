#!/bin/bash
#

qemu-system-x86_64 \
    -m 2096 \
    -smp cores=2 \
    -nographic \
    -enable-kvm \
    -serial mon:stdio \
    -rtc base=utc,clock=rt \
    -chardev socket,path=qga.sock,server=on,wait=off,id=qga0 \
    -device virtio-serial \
    -device virtserialport,chardev=qga0,name=org.qemu.guest_agent.0 \
    -drive if=virtio,media=disk,file=ostree-disk.img \
    -drive if=pflash,format=raw,unit=0,file=/usr/share/OVMF/OVMF_CODE_4M.ms.fd

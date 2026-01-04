qemu-system-aarch64 \
  -M virt -accel hvf -cpu host -smp 4 -m 4G \
  -drive if=pflash,format=raw,readonly=on,file=edk2-aarch64-code.fd \
  -drive if=pflash,format=raw,file=vars.fd \
  -device virtio-gpu-pci -display cocoa \
  -device virtio-net-pci,netdev=net0 \
  -netdev vmnet-bridged,id=net0,ifname=en0 \
  -device qemu-xhci -device usb-kbd -device usb-tablet \
  -drive if=virtio,file=debian_disk.qcow2

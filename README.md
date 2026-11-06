# arch-linux-gnome-setup

## How to Use

First, use [arch-linux-auto-install](https://github.com/hywol/arch-linux-auto-install) script.

## How to Custom with your system

This script works well with AMD CPU and AMD Radeon Graphics system.

If you use another GPUs, change Gaming Support Part scripts.

> ### Intel GPUs
>  ```
>  pacman -S vulkan-intel lib32-vulkan- intel-gpu-tools
>  ```

> ### NVIDIA GPUs
>  ```
>  pacman -S egl-wayland nvidia-open-dkms nvidia-utils lib32-nvidia-utils lib32-opencl-nvidia
>  ```

Also, if you using Intel CPU, change limine config file

```
KERNEL_CMDLINE[default]+=rw root=/dev/nvme0n1p2 rootflags=subvol=/@ initrd=/intel-ucode.img
```

## This Script will Install

 * Default Arch Linux wallpaper [source](https://github.com/thr3d33/archlinux-artwork/blob/main/wallpapers/archlinux/dual-screen/5120x2880/arch-dual-gradient-left-5120x2880.png)
 * Improved Vanilla GNOME Experiences with Blur Effect and additional features
    * MoreWaita icons [source](https://github.com/somepaulo/MoreWaita)
    * McMojave Cursors [source](https://github.com/vinceliuice/McMojave-cursors)
    * Blur My Shell
    * GSConnect
 * Necessary Gaming Packages out-of-box
    * Some Default Games
 * GTK-Qt Integrations
 * Fcitx5 IME Included for CJK Language Input
 
## Screenshots

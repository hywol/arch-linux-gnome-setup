# arch-linux-gnome-setup

## How to Use

First, use arch-linux-auto-install script.

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

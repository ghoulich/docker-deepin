#! /bin/bash
sudo cp ./panda /usr/share/debootstrap/scripts/
sudo mkdir -p /usr/share/keyrings/
sudo cp ./deepin-archive-keyring.gpg /usr/share/keyrings/

sudo rm -rf amd64/rootfs.tar.xz
sudo rm -rf amd64/rootfs
cd amd64

sudo debootstrap --variant=minbase --no-check-gpg --arch=amd64 panda rootfs https://mirrors.aliyun.com/deepin/
sudo cp ../deepin-archive-keyring.gpg rootfs/etc/apt/trusted.gpg.d/ && sudo cp ../deepin-pools-keyring.gpg rootfs/etc/apt/trusted.gpg.d/
sudo chroot ./rootfs apt-get autoclean
sudo chroot ./rootfs apt-get clean
sudo chroot ./rootfs rm -rvf /usr/share/icons/Adwaita
sudo chroot ./rootfs find /var/lib/apt/lists -type f -delete
sudo chroot ./rootfs find /var/cache -type f -delete
sudo chroot ./rootfs find /var/log -type f -delete
sudo chroot ./rootfs find /usr/share/doc -type f -delete
sudo chroot ./rootfs find /usr/share/man -type f -delete
sudo chroot ./rootfs find /usr/share/locale -type f -delete
cd rootfs
sudo tar -Jcvf ../rootfs.tar.xz *
cd ../../

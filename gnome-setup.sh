#!/bin/sh

echo "Installing Necessary components..."
{
    pacman -S mariadb cups cups-pdf sane ufw tpm2-tools zram-generator nano-syntax-highlighting --noconfirm;
    mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql;
}

echo "Installing Necessary Fonts..."
{
    pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-hack ttf-dejavu ttf-liberation ttf-roboto ttf-roboto-mono ttf-ubuntu-font-family inter-font cantarell-fonts adwaita-fonts --noconfirm;
}

echo "Installing GNOME Desktop and Essential Apps..."
{
    pacman -S gnome dconf-editor gnome-tweaks gnome-shell-extensions gnome-shell-extension-appindicator libappindicator-gtk3 gnome-extensions-app gnome-initial-setup lollypop gst-libav gst-plugins-base gst-plugins-ugly celluloid seahorse deja-dup rclone evolution evolution-spamassassin highlight drawing gufw tuned-ppd gnome-browser-connector adw-gtk-theme papers fwupd dialect gfeeds polari ttf-adwaitamono-nerd --noconfirm;
    pacman -S firefox firefox-i18n-ko libreoffice-fresh libreoffice-fresh-ko unixodbc postgresql-libs qt5ct qt6ct kvantum kvantum-qt5 --noconfirm;
    pacman -S aisleriot gnome-mines gnome-chess gnuchess gnome-sudoku quadrapassel gnome-mahjongg --noconfirm;
}

echo "Removing Bloatwares..."
{
    pacman -Rnn epiphany gnome-music gnome-console gnome-system-monitor sushi --noconfirm;
}

echo "Installing IME..."
{
    pacman -S fcitx5 fcitx5-hangul fcitx5-chinese-addons fcitx5-anthy fcitx5-qt fcitx5-gtk fcitx5-configtool --noconfirm;
}

echo "Setup Desktop..."
{
    cp limine /etc/default/;
    cp nanorc /etc/;
    cp zram-generator.conf /etc/systemd/;
    cp locale.gen /etc/;
    echo 'LANG=en_US.UTF-8' > /etc/locale.conf;
    cp environment /etc;
    mkdir -p /usr/share/gnome/autostart;
    cp libcanberra-login-sound.desktop /usr/share/gnome/autostart;
    mkdir -p /usr/share/backgrounds/arch-wallpaper;
    cp archlinux-wallpaper.png /usr/share/backgrounds/arch-wallpaper;
    cp arch-wallpaper.xml /usr/share/gnome-background-properties;
    chmod +x /usr/share/gnome/autostart/*;
    cp *override /usr/share/glib-2.0/schemas;
    glib-compile-schemas /usr/share/glib-2.0/schemas;
}

echo "Enable multilib..."
{
    ./enable-multilib.sh;
}

echo "Setup Chaotic-AUR..."
{
    ./chaotic-aur.sh;
}

echo "Installing Windows compatibility Layer..."
{
    pacman -S wine wine-mono wine-gecko samba lib32-libxcomposite libxcomposite lib32-pipewire-jack lib32-pipewire sdl2 --noconfirm;
}

echo "Installing Gaming Support..."
{
    ./gaming-support.sh;
}

echo "Install and Setup Extras..."
{
    pacman -S gnome-shell-extension-gsconnect gnome-shell-extension-arch-update gnome-shell-extension-dash-to-dock gnome-shell-extension-blur-my-shell mcmojave-cursors-git pamac yay sshfs gnome-terminal-transparency limine-mkinitcpio-hook qadwaitadecorations-qt6 papirus-icon-theme papirus-folders ttf-sourcecodepro-nerd ttf-hack-nerd ttf-ubuntu-mono-nerd ttf-roboto-mono-nerd plymouth polkit-gnome yaru-sound-theme system-config-printer python-pysmbc --noconfirm;
    papirus-folders -C adwaita;
    mkdir /usr/src/MoreWaita;
    git clone https://github.com/somepaulo/MoreWaita /usr/src/MoreWaita;
    sh /usr/src/MoreWaita/install.sh;

echo "Installing Flatpak Necessary Packages..."
{
    flatpak install -y org.freedesktop.Platform/x86_64/25.08 org.freedesktop.Platform/x86_64/26.08 org.kde.Platform/x86_64/6.9 org.kde.Platform/x86_64/6.10 org.kde.Platform/x86_64/5.15-25.08 org.gnome.Platform/x86_64/50 org.gnome.Platform/x86_64/51;
}

#echo "Setup snapper..."
#{
#    pacman -S snapper limine-mkinitcpio-hook limine-snapper-sync snap-pac;
#    umount /.snapshots;
#    rm -rf /.snapshots;
#    snapper -c root create-config /;
#    mount /.snapshots;
#}

echo "Setup mkinitcpio..."
{
    mkinitcpio -P linux;
}

echo "Enabling Services..."
{
    systemctl enable NetworkManager;
    systemctl enable cups;
    systemctl enable ufw;
    systemctl enable gdm;
    systemctl enable mysql;
    systemctl enable bluetooth;
#   systemctl enable snapper-timeline.timer;
#   systemctl enable snapper-cleanup.timer;
}

echo "Finished!"

exit 0

sudo dnf offline-upgrade download -y
sudo dnf offline-upgrade reboot

sudo dnf groupinstall "Development Tools" -y
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf group install Multimedia -y
sudo dnf install i3 i3blocks i3lock i3status dunst dmenu -y
sudo dnf install python3 python3-pip neofetch ranger mc nmap vim neovim lsd xbacklight xbindkeys dex-autostart sysstat jq scrot playerctl numlockx polkit-gnome thunar thunar-archive-plugin thunar-volman tumbler xed xfce4-terminal arc-theme papirus-icon-theme arandr rofi nitrogen xarchiver xbindkeys xdpyinfo zip acpi gvfs feh mpv vlc cmus audacious geany meld libreoffice abiword emacs gimp stellarium transmission-gtk evince keepassxc inkscape darktable krita filezilla qimgv blueman lxappearance flatpak galculator fontawesome-fonts-all chromium xournal tree redshift conky cups picom lm_sensors powerline-fonts terminus-fonts liberation-fonts google-roboto-fonts google-roboto-mono-fonts lightdm-gtk-greeter-settings -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.visualstudio.code -y
mkdir ~/.fonts
cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip
unzip FiraCode.zip -d ~/.fonts
unzip Meslo.zip -d ~/.fonts
cd ~

mkdir ~/.icons
tar -xf 01-Qogir.tar.xz
cp -R /Downloads/01-Qogir/* ~/.icons
cd ~

sudo mv  /etc/X11/xorg.conf.d/00-keyboard.conf /etc/X11/xorg.conf.d/.00-keyboard.conf_BAK
sudo cp 30-keyboard.conf /etc/X11/xorg.conf.d/
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/

cd ~/Downloads
git clone https://github.com/endeavouros-team/endeavouros-i3wm-setup.git
cd endeavouros-i3wm-setup/etc/skel/
cp .Xresources "${HOME}"/.Xresources
cp -R .config/* "${HOME}"/.config/
cp .gtkrc-2.0 "${HOME}"/.config/
chmod -R +x "${HOME}"/.config/i3/scripts
dbus-launch dconf load / < xed.dconf
cd .local/share
cp -R * ~/.local/share/
cd ~/Downloads
cp picom.conf ~/.config/



HOME_FOLDER="/root"
# 1 - copy configuration files, some as hard links
echo " ==> Copying configuration files"
cd config
mkdir -p "$HOME_FOLDER/.config/hardware"
cp -fv .Xresources "$HOME_FOLDER/.config/hardware"
cp -fv remaps "$HOME_FOLDER/.config/hardware"
cp -fv .profile ~/.profile

echo "==> Sourcing the profile"
source ~/.profile

echo "==> Setting keyboard config"
PERSONAL_MAP="/usr/local/share/kbd/keymap"
mkdir -p "$PERSONAL_MAP"
cp personal.map "$PERSONAL_MAP"
loadkeys "$PERSONAL_MAP/personal.map"
echo "KEYMAP=uk" > /etc/vconsole.conf
echo "KEYMAP=$PERSONAL_MAP/personal.map" >> /etc/vconsole.conf

# 2 - create hard links to scripts (so that if they change, they also update in this folder)
#echo "  > LINKING scripts to .ilya_scripts directory"
#cd ../scripts
#mkdir -p  ~/.ilya_scripts
#ln -fv * ~/.ilya_scripts/
#
## 3 - copy over netstat
#echo "  > COPYING netstat settings to /etc/netctl"
#cd ../netstat
#sudo cp -fv * /etc/netctl
#
## 4 - copy systemctl scripts
#echo "  > COPYING systemctl scripts to launch .ilya_scripts"
#cd ../systemctl
#sudo cp -fv * /etc/systemd/system/
#
## 5 - yandex disk
#echo "  > COPYING yandex disk settings"
#cd ../yandex
#cp -fv * ~/.config/yandex-disk/
#
## 6 - matplotlib
#echo "  > COPYING matplotlib settings"
#cd ..
#cp -r matplotlib ~/.config

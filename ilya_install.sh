echo "==> Syncing files from ricing folder"jjjkk
# 1 - copy configuration files, some as hard links
echo "  > COPYING configuration files"
cd config
cp -fv .Xresources ~/
cp -fv remaps ~/.scripts/tools/
# 1b - copy bash profile
cat .profile >> ~/.profile
source ~/.profile
# 2 - create hard links to scripts (so that if they change, they also update in this folder)
echo "  > LINKING scripts to .ilya_scripts directory"
cd ../scripts
mkdir -p  ~/.ilya_scripts
ln -fv * ~/.ilya_scripts/

# 3 - copy over netstat
echo "  > COPYING netstat settings to /etc/netctl"
cd ../netstat
sudo cp -fv * /etc/netctl

# 4 - copy systemctl scripts
echo "  > COPYING systemctl scripts to launch .ilya_scripts"
cd ../systemctl
sudo cp -fv * /etc/systemd/system/

# 5 - yandex disk
echo "  > COPYING yandex disk settings"
cd ../yandex
cp -fv * ~/.config/yandex-disk/

# 6 - matplotlib
echo "  > COPYING matplotlib settings"
cd ..
cp -r matplotlib ~/.config

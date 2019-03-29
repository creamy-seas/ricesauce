# 1 - copy configuration files, some as hard links
cd config
cp -fv .Xresources ~/
cp -fv remaps ~/.scripts/tools/

# 2 - create hard links to scripts (so that if they change, they also update in this folder)
cd ../scripts
mkdir -p  ~/.ilya_scripts
ln -fv * ~/.ilya_scripts/

# 3 - copy over netstat
cd ../netstat
sudo cp -fv * /etc/netctl

# 4 - copy systemctl scripts
cd ../systemctl
sudo cp -fv * /etc/systemd/system/

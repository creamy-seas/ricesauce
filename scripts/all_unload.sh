cd /etc/systemd/system
sudo systemctl stop boomer_usa.service
sudo systemctl disable boomer_usa.service
sudo systemctl disable boomer_usa.timer
sudo systemctl stop boomer_usa.timer
sudo systemctl stop kaiju.service
sudo systemctl stop kaiju.timer
sudo systemctl disable kaiju.service
sudo systemctl disable kaiju.timer
sudo systemctl disable jager.timer
sudo systemctl disable jager.service
sudo systemctl stop jager.service
sudo systemctl stop jager.timer

cd /etc/systemd/system
sudo systemctl enable kaiju.service
sudo systemctl enable jager.service
sudo systemctl enable boomer_usa.service
sudo systemctl enable boomer_usa.timer
sudo systemctl enable kaiju.timer
sudo systemctl enable jager.timer
sudo systemctl start boomer_usa.timer
sudo systemctl start kaiju.timer
sudo systemctl start jager.timer

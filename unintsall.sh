sudo systemctl stop arti.service
sudo rm /etc/systemd/system/arti.service
sudo systemctl daemon-reload
sudo rm -r /opt/arti

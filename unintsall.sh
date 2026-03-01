sudo systemctl stop arti.service
sudo rm /etc/systemd/system/arti.service
sudo systemctl daemon-reload
sudo userdel -r arti
sudo rm -r /opt/arti

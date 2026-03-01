mkdir tmp
cd tmp

sudo useradd -r -s /usr/sbin/nologin -M arti
sudo mkdir /opt/arti

wget https://gffice.github.io/ar-appdl/bin-amd64.tar.xz
tar -xJvf bin-amd64.tar.xz
cd bin
md5sum -c md5
sudo cp lyrebird snowflake webtunnel conjure arti /opt/arti/
cd ../..
sudo chmod +x -R /opt/arti
sudo cp arti.toml /opt/arti
sudo chown -R arti /opt/arti

sudo cp arti.service /etc/systemd/system/arti.service
sudo systemctl daemon-reload
sudo systemctl enable arti.service
rm -r tmp

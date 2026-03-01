mkdir tmp
cd tmp

sudo useradd -r -s /usr/sbin/nologin -M arti
sudo mkdir /opt/arti

wget https://gffice.github.io/ar-appdl/bin-amd64.tar.xz
tar -xJvf bin-amd64.tar.xz
cd bin
md5sum -c md5
cp lyrebird snowflake webtunnel conjure arti /opt/arti/
cd ../..
chmod +x -R /opt/arti
cp arti.toml /opt/arti
chown -R arti /opt/arti

cp arti.service /etc/systemd/system/arti.service
sudo systemctl daemon-reload
sudo systemctl enable arti.service
rm -r tmp

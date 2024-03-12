sudo apt-get update
sudo apt-get install openvpn easy-rsa --assume-yes
sudo cat \
  /usr/share/doc/openvpn/examples/sample-config-files/server.conf \
  | tee /etc/openvpn/server.conf > /dev/null
sudo cp openvpn-ca/pki/ca.crt /etc/openvpn
sudo cp openvpn-ca/pki/dh.pem /etc/openvpn
sudo cp openvpn-ca/pki/ta.key /etc/openvpn
sudo cp openvpn-ca/pki/issued/server.crt /etc/openvpn
sudo cp openvpn-ca/pki/private/server.key /etc/openvpn
sudo cp server.conf /etc/openvpn/server.conf
sudo cp sysctl.conf /etc/sysctl.conf
sudo systemctl enable openvpn@server
sudo systemctl start openvpn@server
sysctl -p

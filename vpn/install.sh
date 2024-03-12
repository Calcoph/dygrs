sudo apt-get update
sudo apt-get install openvpn easy-rsa --assume-yes
sudo cat \
  /usr/share/doc/openvpn/examples/sample-config-files/server.conf \
  | tee /etc/openvpn/server.conf > /dev/null
sudo cp openvpn-ca/pki/ca.crt /etc/openvpn
sudo cp openvpn-ca/pki/dh.pem /etc/openvpn
sudo cp openvpn-ca/pki/ta.key /etc/openvpn
sudo cp openvpn-ca/pki/issued/server.crt /erc/openvpn
sudo cp openvpn-ca/pki/private/server.key /erc/openvpn
sudo cp server.conf /etc/openvpn/server.conf
sudo cp sysctl.conf /etc/sysctl.conf
sudo cp client.conf openvpn-ca
sysctl -p

FROM ubuntu:latest
RUN apt-get update
RUN apt-get install openvpn easy-rsa --assume-yes

RUN cat \
  /usr/share/doc/openvpn/examples/sample-config-files/server.conf \
  | tee /etc/openvpn/server.conf > /dev/null
COPY openvpn-ca/pki/ca.crt /etc/openvpn
COPY openvpn-ca/pki/dh.pem /etc/openvpn
COPY openvpn-ca/pki/ta.key /etc/openvpn
COPY openvpn-ca/pki/issued/server.crt /erc/openvpn
COPY openvpn-ca/pki/private/server.key /erc/openvpn
COPY server.conf /etc/openvpn/server.conf
COPY sysctl.conf /etc/sysctl.conf
RUN sysctl -p

CMD sleep infinity

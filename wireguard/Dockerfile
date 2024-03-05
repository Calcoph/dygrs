# https://www.digitalocean.com/community/tutorials/how-to-set-up-wireguard-on-ubuntu-20-04
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install iproute2 --assume-yes
RUN apt-get install ufw --assume-yes
RUN apt-get install net-tools --assume-yes
RUN apt-get install wireguard --assume-yes

COPY ./wg/private.key /etc/wireguard/private.key
RUN chmod go= /etc/wireguard/private.key
COPY ./wg/public.key /etc/wireguard/public.key
COPY ./wg/wg0.conf /etc/wireguard/wg0.conf

COPY ./01-network-manager-all.yaml /etc/netplan/01-network-manager-all.yaml
COPY ./sysctl.conf /etc/sysctl.conf

RUN sysctl -p

WORKDIR /root/wg

CMD wg-quick up wg0 && wg set wg0 peer 6qqU0B3TZgy6refy/T0vlxJtLmupSKzDIKV2cgz0zE4= allowed-ips 0.0.0.0/0 && sleep infinity

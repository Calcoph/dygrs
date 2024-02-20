IPs de equipos:

192.168.0.0/24

Ips de clientes:

10.8.0.0/16

Ips de servidores:

|nombre|IP máquina|IP VPN|contraseña|
|-|-|-|-|
ROUTER| 10.9.0.1||
VPN| 10.9.0.2  |    10.8.0.1|vpn1234vpn
DNS| 10.9.0.3 |  |dns1234dns

Interfaces de router:
* 0/0: red clientes (192.168.0.0/24)
* 0/1: red servidores (10.9.0.0/24)


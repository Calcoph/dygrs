# En los clientes:
default via <ip del router de la uni>
ip route add 10.9.0.0/24 via 192.168.0.1

# En vpn
default via <ip del router de la uni>
ip route add 192.168.0.0/24 via 10.9.0.1

# En dns
default via <ip del router de la uni>
ip route add 10.8.0.0/24 via 10.9.0.2

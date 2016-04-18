CONFIGURING UFW (Un-Complicated) FIREWALL:
sudo su (become super user "root" instead of using sudo prefix with every command)
ufw status -v (checking status of your firewall, -v is "Verbose "option)
ufw enable (Enabling firewall, use this command when firewall is disabled)
ufw status -v 
ufw --help (View Help)

RULES: (Allowing, Denying & Rejecting connections on Port)
1.allow
2.deny (drops a packet)
3.reject (reject a packet with error)

ADDING RULES:

For Incoming Data:
Syntax:
ufw allow port_no
ufw deny port_no
ufw reject port_no

Examples:
ufw allow 80 (allowing incoming data from port 80, port 80 is dedicated to webserver)
ufw status numbered (rules will be shown in numbers)
ufw reject 8080 (rejecting incoming data from port 8080)
ufw deny 8081 (denying incoming data from port 8081)

SPECIFY A PARTICULAR PROTOCOL IN RULES:
Syntax:
ufw allow to any port port_no proto protocol_name (use any port on the place of port_no and use Tcp or Udp protocol on the place of protocol_name)

Example:
ufw allow to any port 1000 proto udp (you can use tcp as well, i am using port 1000, you can use any port)

For Outgoing Data:
Syntax:
ufw allow OUT port_no ('OUT' and 'IN' keyword is case insensitive)
ufw deny OUT port_no
ufw reject OUT port_no

Examples:
ufw allow OUT 80 (allowing outgoing data from port 80, port 80 is dedicated to webserver)
ufw status numbered (rules will be shown in numbers)
ufw reject OUT 8080 (rejecting outgoing data from port 8080)
ufw deny OUT 8081 (denying outgoing data from port 8081)

SPECIFY A PARTICULAR IP ADDRESS IN RULES:
Syntax:
ufw deny from ip_address to any (use ip_address on the place of ip_address, this will deny data from the particular ip_address to every port)
ufw deny OUT from any to ip_address (use ip_address on the place of ip_address, this will deny outging data from anywhere to this ip_address)
ufw allow OUT from any port port_no to ip_address (use any port on the place of port_no and ip_address on the place of ip_address, this will allow outging data from your specify port_no to your specify ip_address)
ufw allow IN from ip_address to any port port_no (use any port on the place of port_no and ip_address on the place of ip_address, this will allow incoming data from your specify ip_address to your specify port_no)


Examples:
ufw deny from 192.168.158.129 to any
ufw deny OUT from any to 192.168.158.123
ufw allow OUT from any port 1234 to 192.168.158.111
ufw allow IN from 192.168.153.112 to any port 1234


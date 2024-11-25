#!/bin/sh
wget https://cybur-dial.com/downloads/cluster-db
mysql -u root asterisk < cluster-db
/usr/share/astguiclient/ADMIN_update_server_ip.pl --old-server_ip=75.127.1.42
cd /usr/src/astguiclient/trunk
svn up
perl install.pl --no-prompt
echo "The default password for the 6666 admin user is CyburDial2024"
echo "The default password for the 6666 admin user is CyburDial2024"
echo "The default password for the 6666 admin user is CyburDial2024"
echo "The default password for the 6666 admin user is CyburDial2024"

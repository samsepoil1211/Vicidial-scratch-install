#!/bin/sh
wget https://cybur-dial.com/downloads/standard-db.zip
unzip standard-db.zip
mysql -u root asterisk < standard-db
/usr/share/astguiclient/ADMIN_update_server_ip.pl --old-server_ip=10.10.10.15


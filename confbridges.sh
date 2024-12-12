#!/bin/sh

echo "Upgrade Asterisk 18 to use ConfBridges"


cd /usr/src/
rm -rf vicidial-install-scripts
git clone https://github.com/carpenox/vicidial-install-scripts.git
cd vicidial-install-scripts
cd /usr/src/vicidial-install-scripts/
yes | cp -rf extensions.conf /etc/asterisk/extensions.conf
mv confbridge-vicidial.conf /etc/asterisk/

tee -a /etc/asterisk/confbridge.conf <<EOF

#include confbridge-vicidial.conf
EOF


tee -a /etc/asterisk/manager.conf <<EOF

[confcron]
secret = 1234
read = command,reporting
write = command,reporting

eventfilter=Event: Meetme
eventfilter=Event: Confbridge
EOF






cd /usr/src/asterisk/asterisk-18.18.1/
wget http://download.vicidial.com/asterisk-patches/Asterisk-18/amd_stats-18.patch
wget http://download.vicidial.com/asterisk-patches/Asterisk-18/iax_peer_status-18.patch
wget http://download.vicidial.com/asterisk-patches/Asterisk-18/sip_peer_status-18.patch
wget http://download.vicidial.com/asterisk-patches/Asterisk-18/timeout_reset_dial_app-18.patch
wget http://download.vicidial.com/asterisk-patches/Asterisk-18/timeout_reset_dial_core-18.patch
cd apps/
wget http://download.vicidial.com/asterisk-patches/Asterisk-18/enter.h
wget http://download.vicidial.com/asterisk-patches/Asterisk-18/leave.h
yes | cp -rf enter.h.1 enter.h
yes | cp -rf leave.h.1 leave.h

cd /usr/src/asterisk/asterisk-18.18.1/
patch < amd_stats-18.patch apps/app_amd.c
patch < iax_peer_status-18.patch channels/chan_iax2.c
patch < sip_peer_status-18.patch channels/chan_sip.c
patch < timeout_reset_dial_app-18.patch apps/app_dial.c
patch < timeout_reset_dial_core-18.patch main/dial.c


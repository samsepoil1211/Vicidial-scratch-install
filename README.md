Hi, I’m Debjit — a developer at Beltalk Technology and a cybersecurity engineer.
I contribute to the ViciDial community because I genuinely want to see everyone grow and succeed. If any of my work — whether through the forums, GitHub, or direct help — has made a difference for you or your business, feel free to support my efforts. Your support helps me continue sharing tools, fixes, and solutions with the community. Let’s build a stronger ecosystem together!

# Need help? hit me on my whatsapp : +91 9477233566

# VICIDIAL INSTALLATION SCRIPTS (Default is Eastern Time Zone US)
# Centos, Rocky and AlmaLinux Vicidial Install pre_requisites 
# I have created a faster auto installer for Alma and Rocky 9 that will also install the dynamic portal and the CyburPhone

## Copy & Paste the part blow:

```
# Install english language pack
dnf install -y glibc-langpack-en

# Configure new locale. This basically just edits /etc/locale.conf
localectl set-locale en_US.UTF-8

timedatectl set-timezone America/New_York

yum check-update
yum update -y
yum -y install epel-release
yum update -y
yum install git -y
yum install kernel* --exclude=kernel-debug* -y


#Disable SELINUX
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config    

cd /usr/src/
git clone https://github.com/samsepoil1211/vicidial-scratch-install

reboot

````
  

This first installer is the one I keep most up to date and use personally for all my clients. it is the one I recommend that you use.
If you do not install the SSL cert during the initiial install, you have to turn the firewall off before trying to do it after a reboot. Dont forget to turn it back on. Also, by default the firewall will leave port 443 open to the public, so you can login and change the default password. Make sure you remove it from the public zone once your setup is done.
# NEW main installer to use for Alma/Rocky 9 w/ Dynamic portal, WebPhone, SSL cert & Asterisk 18 with Confbridges

```
cd /usr/src/vicidial-install-scripts
chmod +x main-installer.sh
./main-installer.sh
```

# Above installer but with PHP8 instead of PHP7 (Beta Release)

```
cd /usr/src/vicidial-install-scripts
chmod +x main-installer-php8.sh
./main-installer-php8.sh
```

# NEW Installer for add on dialers on Alma or Rocky 9

```
cd /usr/src/vicidial-install-scripts
chmod +x addon-dialer-alma9.sh
./addon-dialer-alma9.sh
```

### Alma/Rocky 9 Installer with Dynamic portal and CyburPhone with SSL cert with Asterisk 18

```
cd /usr/src/vicidial-install-scripts
chmod +x alma-rocky9-ast18.sh
./alma-rocky9-ast18.sh
```

Make sure you update your SSL cert location in /etc/httpd/conf.d/viciportal-ssl.conf


### Alma/Rocky 9 Installer with Dynamic portal, CyburPhone, SSL Cert and Asterisk 16

```
cd /usr/src/vicidial-install-scripts
chmod +x alma-rocky9-ast16.sh
./alma-rocky9-ast16.sh
```

## Install a default database with everything setup ready to go - Password CyburDial2024 (need to add "a" to phone login on users accounts, oops)

```
cd /usr/src/vicidial-install-scripts
chmod +x standard-db.sh
./standard-db.sh
```

# See tools section at the bottom for cluster db with 7 servers, 150 users and phones ready to go

### Alma/Rocky 9 Installer with Dynamic portal and CyburPhone with SSL cert with Asterisk 18 for CONTABO ONLY

```
cd /usr/src/vicidial-install-scripts
chmod +x alma-rocky-centos-9-ast18-contabo.sh
./alma-rocky-centos-9-ast18-contabo.sh
```

### Alma 8 Add on telephony server for a cluster

```
cd /usr/src/vicidial-install-scripts
chmod +x Vici-alma-dialer-install.sh
./Vici-alma-dialer-install.sh
```

### Execute Centos7 Vicidial Install
```
cd /usr/src/vicidial-install-scripts
chmod +x vicidial-install-c7.sh
./vicidial-install-c7.sh
```

### Execute Alma/Rocky 8 Linux Vicidial Install - Ast 16
```
cd /usr/src/vicidial-install-scripts
chmod +x alma-rocky-centos8-ast16.sh
./alma-rocky-centos8-ast16.sh
```

### Execute Alma/Rocky 8 Linux Vicidial Install - Ast 18

```
cd /usr/src/vicidial-install-scripts
chmod +x alma-rocky-centos-8-ast18.sh
./alma-rocky-centos-8-ast18.sh
```

## USEFUL TOOLS ##

## Cluster Database with 7 servers ready with 150 users and phones

```
cd /usr/src/vicidial-install-scripts
chmod +x cluster-db.sh
./cluster-db.sh
```

# These 2 steps below can be used to cluster servers after they have been installed with one of the above installers. Example: main-installer.sh

## Step 1: Add dialers into database POST install - This is to be used to add dialer servers into a cluster with conferences and confbridges

```
cd /usr/src/vicidial-install-scripts
chmod +x add-dialer-to-DB.sh
./add-dialer-to-DB.sh
```

## Step 2: Link Dialers to the database - run this on each dialer

```
cd /usr/src/vicidial-install-scripts
chmod +x run-on-dialer-servers-cluster.sh
./run-on-dialer-servers-cluster.sh
```

## Repeat steps 1 and 2 in order as you do each server

## Install Webphone and SSL cert for VICIDIAL
## DO THIS IF YOU HAVE PUBLIC DOMAIN WITH PUBLIC IP ONLY

```
cd /usr/src/vicidial-install-scripts
chmod +x vicidial-enable-webrtc.sh
./vicidial-enable-webrtc.sh
```

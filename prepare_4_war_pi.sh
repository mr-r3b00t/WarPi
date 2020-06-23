# WAR Pi
# Install Metaspoit and other tools on a Pi4
# by mRr3b00t (UK_Daniel_Card)
# https://twitter.com/UK_Daniel_Card


# install nmap, evil-winrm, impacket, RDP tools, metasploit, bettercap, mimikatz etc.

# TO DO LIST =
#-------------------------------
# rockyou
# windows tools e.g. sysinternals etc.
# add CrackMapExec


# GO GO GO!

#get temp
vcgencmd measure_temp

#fix screen tear and performance issues
sudo rm /etc/xdg/autostart/xcompmgr.desktop

#update the pi
sudo apt update -y & sudo apt upgrade -y

sudo mkdir /usr/share/wordlists

cd /usr/share/wordlists
sudo git clone https://github.com/danielmiessler/SecLists.git



sudo mkdir /pentest
cd /pentest
sudo git clone https://github.com/SecureAuthCorp/impacket.git

sudo mkdir mimikatz
cd /pentest/mimikatz
sudo wget https://github.com/gentilkiwi/mimikatz/releases/download/2.2.0-20200519/mimikatz_trunk.zip
sudo unzip mimikatz_trunk.zip


cd /

sudo apt install rdesktop -y
sudo apt install freerdp2-x11 -y

#The best RDP manager https://remmina.org/

sudo apt install dirmngr
sudo apt-key adv --fetch-keys https://www.remmina.org/raspbian/remmina_raspbian.asc
sudo bash -c 'echo "deb https://www.remmina.org/raspbian/ buster main" > /etc/apt/sources.list.d/remmina_raspbian.list'
sudo apt update
sudo apt install remmina -y

#Evil WINRM
sudo gem install evil-winrm

#AirCrack
sudo apt install aircrack-ng -y

#SSL Scan
sudo apt install sslscan -y

#BetterCap
cd /pentest
sudo mkdir bettercap
cd bettercap
sudo wget https://github.com/bettercap/bettercap/releases/download/v2.27.1/bettercap_linux_armhf_v2.27.1.zip
sudo unzip bettercap_linux_armhf_v2.27.1.zip
# sudo ./bettercap


#nmap pew pewwin0	
sudo apt install nmap zenmap -y

sudo apt-get install alien -y

sudo apt-get -y install build-essential zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev locate libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev openssl autoconf libtool ncurses-dev bison curl wget postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev -y
sudo gem install wirble sqlite3-ruby sqlite3 bundler pgarrayparser afm nokogiri ffi pg -y
sudo apt-get install libsqlite3-dev
sudo gem install sqlite3 -v '1.3.13' --source 'https://rubygems.org/'
sudo apt install ruby-dev -y

#insall Impacket
pip install impacket



cd /opt
sudo git clone https://github.com/rapid7/metasploit-framework.git
cd metasploit-framework

sudo gem install bundler:1.17.3
sudo bundle update --bundler

bundle install

cd /opt/metasploit-framework

sudo ./msfconsole

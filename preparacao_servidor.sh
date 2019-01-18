#!/bin/bash
add-apt-repository  -y  ppa:bitcoin/bitcoin
add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt install make -y
apt-get install -y unzip
apt-get install -y nano htop git
apt-get install -y software-properties-common
apt-get install -y build-essential libtool autotools-dev pkg-config libssl-dev
apt-get install -y libboost-all-dev
apt-get install -y libevent-dev
apt-get install -y libminiupnpc-dev
apt-get install -y autoconf
apt-get install -y automake unzip
apt-get install -y libdb4.8-dev libdb4.8++-dev
apt-get install -y gcc-4.9
apt-get install -y libstdc++6
apt-get install aptitude -y
apt-get install fail2ban -y
apt-get install pwgen
apt-get install libzmq3-dev

cp /etc/fail2ban/fail2ban.conf /etc/fail2ban/fail2ban.local
cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

fallocate -l 5G /mnt/5000MB.swap
chmod 600 /mnt/5000MB.swap
mkswap /mnt/5000MB.swap
swapon /mnt/5000MB.swap
echo '/mnt/5000MB.swap none swap sw 0 0' | sudo tee -a /etc/fstab

ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp
ufw limit 22/tcp
ufw logging on
ufw --force enable
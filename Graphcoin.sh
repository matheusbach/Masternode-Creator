#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Graphcoin v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Instalando Dependencias..."
sleep 3
apt install -y make build-essential libtool software-properties-common autoconf libssl-dev libboost-dev libboost-chrono-dev libboost-filesystem-dev \
libboost-program-options-dev libboost-system-dev libboost-test-dev libboost-thread-dev sudo automake git curl libdb4.8-dev \
bsdmainutils libdb4.8++-dev libminiupnpc-dev libgmp3-dev ufw pkg-config libevent-dev libdb5.3++ unzip libzmq5

echo "Instalando Node..."
sleep 3
cd
mkdir graph
cd graph
wget https://github.com/Graphcoin/downloads/raw/master/Linux_x64/graphcoind
wget https://github.com/Graphcoin/downloads/raw/master/Linux_x64/graphcoin-cli
chmod +rwx graphcoin-cli
chmod +rwx graphcoind
./graphcoind &
sleep 40
./graphcoin-cli stop

ipvps=$(curl -s4 icanhazip.com)


echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey
echo "Escreva um nome de usuario !"
read user
echo "Escreva uma senha !"
read senha
echo

echo "addnode=178.128.14.55" >> ~/.GraphcoinCore/graphcoin.conf
echo "addnode=178.128.3.233" >> ~/.GraphcoinCore/graphcoin.conf
echo "addnode=159.65.205.213" >> ~/.GraphcoinCore/graphcoin.conf
echo "addnode=139.59.137.51" >> ~/.GraphcoinCore/graphcoin.conf
echo "addnode=159.65.251.84" >> ~/.GraphcoinCore/graphcoin.conf
echo "addnode=178.128.102.184" >> ~/.GraphcoinCore/graphcoin.conf
echo "addnode=209.97.178.6" >> ~/.GraphcoinCore/graphcoin.conf
echo "addnode=188.166.105.42" >> ~/.GraphcoinCore/graphcoin.conf
echo "addnode=178.128.55.137" >> ~/.GraphcoinCore/graphcoin.conf
echo "addnode=206.189.121.233" >> ~/.GraphcoinCore/graphcoin.conf
echo "rpcuser="$user >> ~/.GraphcoinCore/graphcoin.conf
echo "rpcpassword="$senha >> ~/.GraphcoinCore/graphcoin.conf
echo "daemon=1" >> ~/.GraphcoinCore/graphcoin.conf
echo "staking=0" >> ~/.GraphcoinCore/graphcoin.conf
echo "listen=1" >> ~/.GraphcoinCore/graphcoin.conf
echo "server=1" >> ~/.GraphcoinCore/graphcoin.conf
echo "logtimestamps=1" >> ~/.GraphcoinCore/graphcoin.conf
echo "maxconnections=256" >> ~/.GraphcoinCore/graphcoin.conf
echo "port=22629" >> ~/.GraphcoinCore/graphcoin.conf
echo "masternode=1" >> ~/.GraphcoinCore/graphcoin.conf
echo "externalip="$ipvps >> ~/.GraphcoinCore/graphcoin.conf
echo "masternodeprivkey="$genkey >> ~/.GraphcoinCore/graphcoin.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd graph
./graphcoind &
sleep 30
./graphcoin-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd graph"
echo "./graphcoin-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Graphcoin.sh ~/graph

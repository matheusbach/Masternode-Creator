#!/bin/bash

cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Vibook p/ IPV4 v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git
sudo apt install rar
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get install -y nano htop git
sudo apt-get install -y software-properties-common
sudo apt-get install -y build-essential libtool autotools-dev pkg-config libssl-dev
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libevent-dev
sudo apt-get install -y libminiupnpc-dev
sudo apt-get install -y autoconf
sudo apt-get install -y automake unzip
sudo add-apt-repository  -y  ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install -y libdb4.8-dev libdb4.8++-dev

echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd
rm -r vibook
rm -r .vibook


echo "Instalando Node..."
sleep 3
cd
mkdir vibook
cd vibook
wget https://github.com/VibookCoin/vibook/releases/download/v2.2.0/ViBOOK-2.2.0-x86_64-pc-linux-gnu.zip
unzip ViBOOK-2.2.0-x86_64-pc-linux-gnu.zip
./vibookd &
sleep 20
./vibook-cli stop

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey
echo

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.vibook/vibook.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.vibook/vibook.conf
echo "rpcport=22262" >> ~/.vibook/vibook.conf
echo "externalip="$ipvps >> ~/.vibook/vibook.conf
echo "masternodeprivkey="$genkey >> ~/.vibook/vibook.conf
echo "rpcallowip=127.0.0.1" >> ~/.vibook/vibook.conf
echo "listen=0" >> ~/.vibook/vibook.conf
echo "server=1" >> ~/.vibook/vibook.conf
echo "daemon=1" >> ~/.vibook/vibook.conf
echo "masternode=1" >> ~/.vibook/vibook.conf
echo "bind="$ipvps >> ~/.vibook/vibook.conf
echo "masternodeaddr="$ipvps:22262 >> ~/.vibook/vibook.conf
echo "logtimestamps=1" >> ~/.vibook/vibook.conf
echo "port=22262" >> ~/.vibook/vibook.conf
echo "addnode=77.220.213.121:22262" >> ~/.vibook/vibook.conf
echo "addnode=35.236.173.171:22262" >> ~/.vibook/vibook.conf
echo "addnode=144.202.34.135:22262" >> ~/.vibook/vibook.conf
echo "addnode=188.231.144.199:22262" >> ~/.vibook/vibook.conf
echo "addnode=108.61.85.140:22262" >> ~/.vibook/vibook.conf
echo "addnode=144.202.78.59:22262" >> ~/.vibook/vibook.conf
echo "addnode=149.28.254.251:22262" >> ~/.vibook/vibook.conf
echo "addnode=45.32.236.180:22262" >> ~/.vibook/vibook.conf
echo "addnode=45.32.200.83:22262" >> ~/.vibook/vibook.conf
echo "addnode=207.246.123.253:22262" >> ~/.vibook/vibook.conf
echo "addnode=107.174.222.247:22262" >> ~/.vibook/vibook.conf
echo "addnode=149.28.243.212:22262" >> ~/.vibook/vibook.conf
echo "addnode=45.63.110.216:22262" >> ~/.vibook/vibook.conf
echo "addnode=34.73.147.146:22262" >> ~/.vibook/vibook.conf
echo "addnode=34.73.108.105:22262" >> ~/.vibook/vibook.conf
echo "addnode=173.212.236.164:22262" >> ~/.vibook/vibook.conf
echo "addnode=34.73.14.173:22262" >> ~/.vibook/vibook.conf
echo "addnode=34.73.78.120:22262" >> ~/.vibook/vibook.conf
echo "addnode=155.138.233.253:22262" >> ~/.vibook/vibook.conf
echo "addnode=5.164.156.103:22262" >> ~/.vibook/vibook.conf
echo "addnode=173.199.117.6:22262" >> ~/.vibook/vibook.conf
echo "addnode=136.144.220.249:22262" >> ~/.vibook/vibook.conf
echo "addnode=108.61.193.110:22262" >> ~/.vibook/vibook.conf
echo "addnode=207.180.214.178:22262" >> ~/.vibook/vibook.conf
echo "addnode=145.131.29.236:22262" >> ~/.vibook/vibook.conf
echo "addnode=149.28.106.54:22262" >> ~/.vibook/vibook.conf
echo "addnode=95.179.140.3:22262" >> ~/.vibook/vibook.conf
echo "addnode=209.97.154.140:22262" >> ~/.vibook/vibook.conf
echo "addnode=207.180.249.77:22262" >> ~/.vibook/vibook.conf
echo "addnode=136.144.202.55:22262" >> ~/.vibook/vibook.conf
echo "addnode=107.174.222.233:22262" >> ~/.vibook/vibook.conf
echo "addnode=107.174.223.15:22262" >> ~/.vibook/vibook.conf
echo "addnode=107.174.222.232:22262" >> ~/.vibook/vibook.conf
echo "addnode=136.144.202.218:22262" >> ~/.vibook/vibook.conf
echo "addnode=173.249.63.78:22262" >> ~/.vibook/vibook.conf
echo "addnode=5.189.162.110:22262" >> ~/.vibook/vibook.conf
echo "addnode=107.172.155.78:22262" >> ~/.vibook/vibook.conf
echo "addnode=34.73.252.30:22262" >> ~/.vibook/vibook.conf
echo "addnode=185.231.69.112:22262" >> ~/.vibook/vibook.conf

echo "Baixando bootstrap..."
cd
cd .vibook
wget https://github.com/VibookCoin/vibook/releases/download/v2.2.0/bootstrap-18042019.zip
unzip bootstrap-18042019.zip
rm -r bootstrap-18042019.zip

echo "Iniciando Masternode..."
sleep 3
cd 
cd vibook
./vibookd &
sleep 30
./vibook-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd vibook"
echo "./vibook-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "Deverá usar o comando a baixo no console de sua wallet windows para dar start no masternode"
echo "startmasternode alias false (nomedoalias)"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Vibookipv4.sh ~/vibook

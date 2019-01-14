#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Edcash v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Instalando Node..."
sleep 3
cd
wget https://github.com/edcash-project/edcash/releases/download/v2.1.1.1/edcash-2.1.1-linux.zip
unzip edcash-2.1.1-linux.zip
cd edcash-2.1.1-linux
./edcashd
sleep 40
./edcash-cli stop

echo "Seu ip é $ipvps"
read ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=rpc_edcash" >> ~/.edcash/edcash.conf
echo "rpcpassword=5bcd3284c84f37eaa86e4e56834c929272" >> ~/.edcash/edcash.conf
echo "rpcallowip=127.0.0.1" >> ~/.edcash/edcash.conf
echo "rpcport=5332" >> ~/.edcash/edcash.conf
echo "listen=1" >> ~/.edcash/edcash.conf
echo "daemon=1" >> ~/.edcash/edcash.conf
echo "server=1" >> ~/.edcash/edcash.conf
echo "addnode=177.125.121.229" >> ~/.edcash/edcash.conf
echo "addnode=177.125.123.238" >> ~/.edcash/edcash.conf
echo "addnode=201.148.120.30" >> ~/.edcash/edcash.conf
echo "addnode=144.217.188.81" >> ~/.edcash/edcash.conf
echo "masternode=1" >> ~/.edcash/edcash.conf
echo "masternodeaddr="$ipvps >> ~/.edcash/edcash.conf
echo "masternodeprivkey="$genkey >> ~/.edcash/edcash.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd edcash-2.1.1-linux
./edcashd &
aleep 5
./edcashd &
sleep 10
./edcash-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd edcash-2.1.1-linux"
echo "./edcash-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Edcash.sh ~/edcash-2.1.1-linux
mv ~/edcash-2.1.1-linux.zip ~/edcash-2.1.1-linux

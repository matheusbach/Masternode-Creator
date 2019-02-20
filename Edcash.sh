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

echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd 
cd edcash-2.1.1-linux
./edcash-cli stop
cd 
cd edcash-2.2.1-linux
./edcash-cli stop
cd
rm -R edcash-2.2.1-linux
rm -R .edcash
rm -R edcash-2.2.1-linux.zip

echo "Instalando Node..."
sleep 3
cd
wget https://github.com/edcash-project/edcash/releases/download/2.2.1.1/edcash-2.2.1-linux.zip
unzip edcash-2.2.1-linux.zip
cd edcash-2.2.1-linux
./edcashd
sleep 10
./edcashd
sleep 40
./edcash-cli stop

ipvps=$(curl -s4 icanhazip.com)


echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=nlxkpwakivnlxkj" >> ~/.edcash/edcash.conf
echo "rpcpassword=mudarsenharpcxxxzzzccc" >> ~/.edcash/edcash.conf
echo "rpcport=5332" >> ~/.edcash/edcash.conf
echo "rpcallowip=127.0.0.1" >> ~/.edcash/edcash.conf
echo "daemon=1" >> ~/.edcash/edcash.conf
echo "server=1" >> ~/.edcash/edcash.conf
echo "connect=177.125.121.229" >> ~/.edcash/edcash.conf
echo "connect=201.148.120.30" >> ~/.edcash/edcash.conf
echo "connect=177.125.123.238" >> ~/.edcash/edcash.conf
echo "connect=201.148.120.149" >> ~/.edcash/edcash.conf
echo "connect=31.220.61.75" >> ~/.edcash/edcash.conf
echo "connect=149.56.86.48" >> ~/.edcash/edcash.conf
echo "staking=0" >> ~/.edcash/edcash.conf
echo "masternode=1" >> ~/.edcash/edcash.conf
echo "externalip="$ipvps >> ~/.edcash/edcash.conf
echo "masternodeaddr="$ipvps >> ~/.edcash/edcash.conf
echo "masternodeprivkey="$genkey >> ~/.edcash/edcash.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd edcash-2.2.1-linux
./edcashd &
aleep 5
./edcashd &
sleep 10
./edcash-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd edcash-2.2.1-linux"
echo "./edcash-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Edcash.sh ~/edcash-2.2.1-linux
mv ~/edcash-2.2.1-linux.zip ~/edcash-2.2.1-linux

#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Liberty Coin v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Instalando Node..."
sleep 3
cd
mkdir liberty
cd liberty
wget https://s3.amazonaws.com/liberty-builds/5.1.1.0/linux-x64.tar.gz
tar -xzvf linux-x64.tar.gz
./libertyd
sleep 40
./liberty-cli stop

echo "Seu ip é $ipvps"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo "Escreva um nome de usuario !"
read user
echo "Escreva uma senha !"
read senha
echo

echo "addnode=[2a02:c207:2022:332::18]:10417" >> ~/.liberty/liberty.conf
echo "addnode=68.183.210.92:10417" >> ~/.liberty/liberty.conf
echo "addnode=[2a02:c207:2022:8299::d]:10417" >> ~/.liberty/liberty.conf
echo "addnode=178.128.37.250:10417" >> ~/.liberty/liberty.conf
echo "addnode=45.77.44.175:10417" >> ~/.liberty/liberty.conf
echo "addnode=128.199.65.17:10417" >> ~/.liberty/liberty.conf
echo "rpcuser="$user >> ~/.liberty/liberty.conf
echo "rpcpassword="$senha >> ~/.liberty/liberty.conf
echo "rpcallowip=127.0.0.1" >> ~/.liberty/liberty.conf
echo "listen=1" >> ~/.liberty/liberty.conf
echo "daemon=1" >> ~/.liberty/liberty.conf
echo "server=1" >> ~/.liberty/liberty.conf
echo "masternode=1" >> ~/.liberty/liberty.conf
echo "externalip="$ipvps >> ~/.liberty/liberty.conf
echo "masternodeprivkey="$genkey >> ~/.liberty/liberty.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd liberty
./libertyd
sleep 30
./liberty-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd liberty"
echo "./liberty-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Libertycoin.sh ~/liberty
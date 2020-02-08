#!/bin/bash

cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de pepscoin v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git
sudo apt install rar


echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd
rm -r peps
rm -r .peps


echo "Instalando Node..."
sleep 3
cd
mkdir peps
cd peps
wget https://github.com/PEPS-Project/peps/releases/download/v2.3-rev2/peps-daemon.zip
unzip peps-daemon.zip
./pepsd -listen=0
sleep 20
./peps-cli stop
cd

echo "Baixando Bootstrap..."
sleep 3
cd
git clone https://github.com/circulosmeos/gdown.pl.git
cd .peps
~/gdown.pl/gdown.pl https://drive.google.com/file/d/1MUKKG6Ray_JWu_B9Qhiz1HhgnwPhgf8z/view peps.zip
unzip peps.zip
rm -r peps.zip
cd

echo "Seu ipv6 é:"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo "Digite uma rpcport!"
read portarpc

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.peps/peps.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.peps/peps.conf
echo "rpcport="$portarpc >> ~/.peps/peps.conf
echo "externalip="$ipvps >> ~/.peps/peps.conf
echo "masternodeprivkey="$genkey >> ~/.peps/peps.conf
echo "rpcallowip=127.0.0.1" >> ~/.peps/peps.conf
echo "listen=1" >> ~/.peps/peps.conf
echo "server=1" >> ~/.peps/peps.conf
echo "daemon=1" >> ~/.peps/peps.conf
echo "masternode=1" >> ~/.peps/peps.conf
echo "bind="$ipvps >> ~/.peps/peps.conf
echo "masternodeaddr="$ipvps >> ~/.peps/peps.conf
echo "logtimestamps=1" >> ~/.peps/peps.conf
echo "port=15252" >> ~/.peps/peps.conf
echo "mnconflock=1" >> ~/.peps/peps.conf
echo "addnode=95.164.8.207" >> ~/.peps/peps.conf
echo "addnode=45.76.124.236" >> ~/.peps/peps.conf
echo "addnode=149.28.158.224" >> ~/.peps/peps.conf
echo "addnode=149.28.158.213" >> ~/.peps/peps.conf
echo "addnode=149.28.146.115" >> ~/.peps/peps.conf

echo "Iniciando Masternode..."
sleep 3
cd 
rm -r pepsipv6.sh
cd peps
rm -r peps-daemon.zip
./pepsd -listen=0
sleep 30
./peps-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd peps"
echo "./peps-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "Deverá usar o comando a baixo no console de sua wallet windows para dar start no masternode"
echo "startmasternode alias false (nomedoalias)"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"

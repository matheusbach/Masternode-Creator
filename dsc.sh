#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de DataSaverCoin v1.0 para linux 16.04"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git
sudo apt-get update -y
sudo apt-get install build-essential libtool autotools-dev autoconf pkg-config libssl-dev -y
sudo apt-get install libboost-all-dev -y
sudo apt-get install libdb++-dev -y

echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd
rm -R dsc
rm -R .datasavercoin

echo "Instalando Node..."
sleep 3
cd
git clone https://github.com/circulosmeos/gdown.pl.git
cd gdown.pl
./gdown.pl https://drive.google.com/file/d/1roxwRIJRUfmn9qDSjs8CJiMc11asyhWy/view?usp=sharing datasavercoind.zip
unzip datasavercoind.zip
mv datasavercoind.zip ~/dsc
cd dsc
chmod +rwx datasavercoind
./datasavercoind &
sleep 20
./datasavercoind stop

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.datasavercoin/datasavercoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.datasavercoin/datasavercoin.conf
echo "daemon=1" >> ~/.datasavercoin/datasavercoin.conf
echo "staking=0" >> ~/.datasavercoin/datasavercoin.conf
echo "listen=1" >> ~/.datasavercoin/datasavercoin.conf
echo "server=1" >> ~/.datasavercoin/datasavercoin.conf
echo "logtimestamps=1" >> ~/.datasavercoin/datasavercoin.conf
echo "maxconnections=256" >> ~/.datasavercoin/datasavercoin.conf
echo "port=7233" >> ~/.datasavercoin/datasavercoin.conf
echo "masternodeaddr="$ipvps:7233 >> ~/.datasavercoin/datasavercoin.conf
echo "masternode=1" >> ~/.datasavercoin/datasavercoin.conf
echo "externalip="$ipvps >> ~/.datasavercoin/datasavercoin.conf
echo "masternodeprivkey="$genkey >> ~/.datasavercoin/datasavercoin.conf
echo "rcpport=7232" >> ~/.datasavercoin/datasavercoin.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd dsc
./datasavercoind &
sleep 30
./datasavercoind mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd dsc"
echo "./datasavercoind mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/dsc.sh ~/dsc

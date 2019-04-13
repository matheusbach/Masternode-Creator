#!/bin/bash

cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de FestonCoin v1.2"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git
sudo apt install rar
sudo apt -y install software-properties-common
sudo apt install -y make build-essential libtool software-properties-common autoconf libssl-dev libboost-dev libboost-chrono-dev libboost-filesystem-dev \
libboost-program-options-dev libboost-system-dev libboost-test-dev libboost-thread-dev sudo automake git curl libdb4.8-dev \
bsdmainutils libdb4.8++-dev libminiupnpc-dev libgmp3-dev ufw pkg-config libevent-dev libdb5.3++ unzip libzmq5



echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd
rm -r FTON-1.1.1.0-x86_64-pc-linux-gnu
rm -r feston
rm -r .feston


echo "Instalando Node..."
sleep 3
cd
wget https://github.com/festoncoin1/FestonCoin/releases/download/v1.1.1.0/FTON-1.1.1.0-x86_64-pc-linux-gnu.zip
unzip FTON-1.1.1.0-x86_64-pc-linux-gnu.zip
mv FTON-1.1.1.0-x86_64-pc-linux-gnu ~/feston
cd
cd feston
rm -r daemon.tar
chmod +rwx festond
chmod +rwx feston-cli 
./festond &

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.feston/feston.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.feston/feston.conf
echo "rpcport=13332" >> ~/.feston/feston.conf
echo "masternodeprivkey="$genkey >> ~/.feston/feston.conf
echo "rpcallowip=127.0.0.1" >> ~/.feston/feston.conf
echo "listen=1" >> ~/.feston/feston.conf
echo "server=1" >> ~/.feston/feston.conf
echo "daemon=1" >> ~/.feston/feston.conf
echo "masternode=1" >> ~/.feston/feston.conf
echo "masternodeaddr="$ipvps:13333 >> ~/.feston/feston.conf
echo "logtimestamps=1" >> ~/.feston/feston.conf
echo "port=13333" >> ~/.feston/feston.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd feston
./festond &
sleep 30
./feston-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd feston"
echo "./feston-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "Deverá usar o comando a baixo no console de sua wallet windows para dar start no masternode"
echo "startmasternode alias false (nomedoalias)"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/feston.sh ~/feston

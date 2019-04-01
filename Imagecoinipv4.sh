#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Imagecoin v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git
sudo apt-get update
sudo apt-get upgrade 
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
sudo apt-get install libboost-all-dev
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev
sudo apt-get install libminiupnpc-dev libzmq3-dev


echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd 
cd imagecoin
./ImageCoin-cli stop
cd
rm -R imagecoin
rm -R .imagecoincore
rm -R ImageCoin.zip

echo "Instalando Node..."
sleep 3
sudo apt-get install pearl
sudo apt-get install git -y

#git clone https://github.com/circulosmeos/gdown.pl.git
#cd gdown.pl
#./gdown.pl https://drive.google.com/file/d/18lvKCTwkkYious9pevRPoLpLungSfnNg/view?usp=sharing img_16_04_linux.zip
cd
mkdir imagecoin
#mv ~/gdown.pl/img_16_04_linux.zip ~/imagecoin
cd imagecoin
wget https://github.com/mceme/ImageCoin/releases/download/1.0.20/ImageCoin-ubuntu-16_x86_64.zip
unzip ImageCoin-ubuntu-16_x86_64.zip
chmod +rwx ImageCoind
chmod +rwx ImageCoin-cli
./ImageCoind &
sleep 40
./ImageCoin-cli stop

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.imagecoincore/imagecoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.imagecoincore/imagecoin.conf
echo "daemon=1" >> ~/.imagecoincore/imagecoin.conf
echo "staking=0" >> ~/.imagecoincore/imagecoin.conf
echo "listen=1" >> ~/.imagecoincore/imagecoin.conf
echo "server=1" >> ~/.imagecoincore/imagecoin.conf
echo "logtimestamps=1" >> ~/.imagecoincore/imagecoin.conf
echo "maxconnections=256" >> ~/.imagecoincore/imagecoin.conf
echo "port=6998" >> ~/.imagecoincore/imagecoin.conf
echo "masternode=1" >> ~/.imagecoincore/imagecoin.conf
echo "externalip="$ipvps >> ~/.imagecoincore/imagecoin.conf
echo "masternodeprivkey="$genkey >> ~/.imagecoincore/imagecoin.conf
echo "rcpport=6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=23.101.61.34:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=188.166.98.130:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=68.183.126.109:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=134.209.124.204:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=192.241.175.194:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=155.138.209.168:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=51.158.67.174:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=163.172.129.136:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=165.227.0.25:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=138.197.101.155:6998" >> ~/.imagecoincore/imagecoin.conf
echo "checkblocks=6" >> ~/.imagecoincore/imagecoin.conf
echo "checklevel=2" >> ~/.imagecoincore/imagecoin.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd imagecoin
./ImageCoind &
sleep 30
./ImageCoin-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd imagecoin"
echo "./ImageCoin-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/imagecoinipv4.sh ~/imagecoin

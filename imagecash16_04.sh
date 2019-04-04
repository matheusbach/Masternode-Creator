#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Imagecash v1.1 para linux 16.04"
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
cd imagecash
./imgcash-cli stop
cd
rm -R imagecash
rm -R .imgcashcore

echo "Instalando Node..."
sleep 3
cd
git clone https://github.com/circulosmeos/gdown.pl.git
cd gdown.pl
./gdown.pl https://drive.google.com/file/d/1TzBbqHACKiBQy_flGIXveK9m8zyk3_Gp/view?usp=sharing imgc
mv imgc ~/imgc
cd imgc
chmod +rwx imgcashd
chmod +rwx imgcash-cli
./imgcashd &
sleep 20
./imgcash-cli stop

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.imgcashcore/imgcash.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.imgcashcore/imgcash.conf
echo "daemon=1" >> ~/.imgcashcore/imgcash.conf
echo "staking=0" >> ~/.imgcashcore/imgcash.conf
echo "listen=1" >> ~/.imgcashcore/imgcash.conf
echo "server=1" >> ~/.imgcashcore/imgcash.conf
echo "logtimestamps=1" >> ~/.imgcashcore/imgcash.conf
echo "maxconnections=256" >> ~/.imgcashcore/imgcash.conf
echo "port=6888" >> ~/.imgcashcore/imgcash.conf
echo "masternode=1" >> ~/.imgcashcore/imgcash.conf
echo "externalip="$ipvps >> ~/.imgcashcore/imgcash.conf
echo "masternodeprivkey="$genkey >> ~/.imgcashcore/imgcash.conf
echo "rcpport=6888" >> ~/.imgcashcore/imgcash.conf
echo "addnode=23.101.61.34:6888" >> ~/.imgcashcore/imgcash.conf
echo "addnode=104.238.171.10:6888" >> ~/.imgcashcore/imgcash.conf
echo "addnode=45.76.47.138:6888" >> ~/.imgcashcore/imgcash.conf
echo "addnode=51.75.47.131:6888" >> ~/.imgcashcore/imgcash.conf



echo "Iniciando Masternode..."
sleep 3
cd 
cd imagecash
./imgcashd &
sleep 30
./imgcash-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd imagecash"
echo "./imgcash-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/imagecash16_04.sh ~/imagecash

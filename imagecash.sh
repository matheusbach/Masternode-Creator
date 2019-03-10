#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Imagecash v1.0 para linux 18.04"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

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
mkdir imagecash
cd imagecash
wget https://github.com/mceme/ImageCash/releases/download/1.0.8/imgcash-linux_18.04_x86_64.tar.xz
tar -xvf imgcash-linux_18.04_x86_64.tar.xz
chmod +rwx imgcashd
chmod +rwx imgcash-cli
./imgcashd &
sleep 40
./imgcash-cli stop

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

echo "rpcuser="$user >> ~/.imgcashcore/imgcash.conf
echo "rpcpassword="$senha >> ~/.imgcashcore/imgcash.conf
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
echo "addnode=139.180.219.195:6888" >> ~/.imgcashcore/imgcash.conf
echo "addnode=75.144.195.68:6888" >> ~/.imgcashcore/imgcash.conf
echo "addnode=23.101.61.34:6888" >> ~/.imgcashcore/imgcash.conf
echo "addnode=18.216.217.124" >> ~/.imgcashcore/imgcash.conf
echo "addnode=139.180.204.127:6888" >> ~/.imgcashcore/imgcash.conf
echo "addnode=45.32.135.211:6888" >> ~/.imgcashcore/imgcash.conf

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
mv ~/imagecash.sh ~/imagecash
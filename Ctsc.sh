#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de CTSC v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo
echo "Instalando Node..."
sleep 3
wget https://github.com/ctscoin/ctsc-core/releases/download/v1.1.0/CTSC-v1.1.0-linux-x86_64.tar.gz
tar -xzvf CTSC-v1.1.0-linux-x86_64.tar.gz
cd
mv ~/CTSC-v1.1.0-linux-x86_64 ~/ctsc
mv ~/CTSC-v1.1.0-linux-x86_64.tar.gz ~/ctsc
cd ctsc
./ctscd &
sleep 20
./ctsc-cli stop

echo "Seu ip é $ipvps"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo

echo "daemon=1" >> ~/.ctsc/ctsc.conf
echo "staking=0" >> ~/.ctsc/ctsc.conff
echo "listen=1" >> ~/.ctsc/ctsc.conf
echo "server=1" >> ~/.ctsc/ctsc.conf
echo "logtimestamps=1" >> ~/.ctsc/ctsc.conf
echo "maxconnections=256" >> ~/.ctsc/ctsc.conf
echo "port=51527" >> ~/.ctsc/ctsc.conf
echo "masternode=1" >> ~/.ctsc/ctsc.conf
echo "externalip="$ipvps >> ~/.ctsc/ctsc.conf
echo "masternodeprivkey="$genkey >> ~/.ctsc/ctsc.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd ctsc
./ctscd &
sleep 30
./ctsc-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd ctsc"
echo "./ctsc-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Ctsc.sh ~/ctsc

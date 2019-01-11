#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3
echo "Será iniciado a Instalação/Montagem do Masternode de Criptoreal v1.0"
sleep 3
echo "Instalando Pré-Requisitos"
sleep 3
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Instalando Node"
sleep 3
mkdir crs
cd crs
wget https://github.com/CriptoReal/Criptoreal/releases/download/v1.2.0/Criptoreal-Linux.tar.gz
tar -xzvf Criptoreal-Linux.tar.gz
./criptoreald &
sleep 40
./criptoreal-cli stop

echo "Seu ip é $ipvps"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo

echo "daemon=1" >> ~/.criptoreal/criptoreal.conf
echo "staking=0" >>  ~/.criptoreal/criptoreal.conf
echo "listen=1" >> ~/.criptoreal/criptoreal.conf
echo "server=1" >> ~/.criptoreal/criptoreal.conf
echo "logtimestamps=1" >> ~/.criptoreal/criptoreal.conf
echo "maxconnections=256" >> ~/.criptoreal/criptoreal.conf
echo "port=5511" >> ~/.criptoreal/criptoreal.conf
echo "masternode=1" ~/.criptoreal/criptoreal.conf
echo "externalip="$ipvps >> ~/.criptoreal/criptoreal.conf
echo "masternodeprivkey="$genkey >> ~/.criptoreal/criptoreal.conf

echo "Iniciando Masternode..."
cd 
cd crs
./criptoreald &
sleep 30
./criptoreal-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd crs"
echo "./criptoreal-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world/Pages/index.aspx E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob

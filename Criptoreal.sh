#!/bin/bash
cd
echo "Bem vindo ao Scrypts da Bitnoob"
echo 
echo "Será iniciado a Instalação/Montagem do Masternode de Criptoreal"

echo "Instalando Pré-Requisitos"
echo 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Instalando Node"
mkdir crs
cd crs
wget https://github.com/CriptoReal/Criptoreal/releases/download/v1.2.0/Criptoreal-Linux.tar.gz
sleep 30
tar -xzvf Criptoreal-Linux.tar.gz
./criptoreald &
sleep 40
./criptoreal-cli stop

ipvps=`wget -qO- ifconfig.co/ip`

echo "Seu ip é $ipvps"
echo
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
echo "Agradecemos ao Diogo Neves e ao site https://staking.world/Pages/index.aspx pela ajuda, porque sem ele não teriamos esse scrypt, Att. Bitnoob - Vinicius Ferreiro"

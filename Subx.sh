#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Subx v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Instalando Node..."
sleep 3
cd
mkdir subx
cd subx
wget https://github.com/EXISTDevv/SUBXMN/releases/download/v1.0.1.1/subxd-daemon-linux-v1.0.1.1.zip
unzip subxd-daemon-linux-v1.0.1.1.zip
chmod +rwx subxd
./subxd &
sleep 20
./subxd stop

echo "Seu ip é $ipvps"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo "Escreva uma senha com 40 caracteres!"
read senha
echo

echo "externalip="$ipvps >> ~/.subxmn/subx.conf
echo "masternode=1" >> ~/.subxmn/subx.conf
echo "masternodeprivkey="$genkey >> ~/.subxmn/subx.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd subx
./subxd
sleep 30
./subx mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd subx"
echo "./subx mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Subx.sh ~/subx

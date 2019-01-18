#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Primestone v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd 
cd primestone
./primestone-cli stop
cd
rm -R primestone
rm -R .primestone

echo "Instalando Node..."
sleep 3
cd
mkdir primestone
cd primestone
wget https://primestone.global/wp-content/uploads/2019/01/prime_linux.zip
unzip prime_linux.zip
chmod +rwx primestone-cli
chmod +rwx primestoned
./primestoned &
sleep 40
./primestone-cli stop

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

echo "daemon=1" >> ~/.primestone/primestone.conf
echo "listen=1" >> ~/.primestone/primestone.conf
echo "server=1" >> ~/.primestone/primestone.conf
echo "logtimestamps=1" >> ~/.primestone/primestone.conf
echo "maxconnections=256" >> ~/.primestone/primestone.conf
echo "port=34124" >> ~/.primestone/primestone.conf
echo "masternode=1" >> ~/.primestone/primestone.conf
echo "externalip="$ipvps >> ~/.primestone/primestone.conf
echo "masternodeprivkey="$genkey >> ~/.primestone/primestone.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd primestone
./primestoned &
sleep 30
./primestone-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd primestone"
echo "./primestone-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Primestone.sh ~/primestone
#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Smartfox v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Instalando Node..."
sleep 3
cd
mkdir smartfox
cd smartfox
wget https://github.com/smartfoxteam/smartfox/releases/download/v1.2.2.1/fox-cli-linux64
wget https://github.com/smartfoxteam/smartfox/releases/download/v1.2.2.1/foxd-linux-64
chmod +rwx fox-cli-linux64
chmod +rwx foxd-linux-64
./foxd-linux-64 &
sleep 30
./fox-cli-linux64 stop

echo "Qual o IP da sua VPS ?"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo

echo "rpcuser=foxrpc" >> ~/.mirai/mirai.conf
echo "rpcpassword=K6BdLFYhyFeHwJdoaMk93wtyo1V1Qp18ZFTTnk5jFNa" >> ~/.mirai/mirai.conf
echo "listen=1" >> ~/.mirai/mirai.conf
echo "server=1" >> ~/.mirai/mirai.conf
echo "daemon=1" >> ~/.mirai/mirai.conf
echo "staking=0" >> ~/.mirai/mirai.conf
echo "logtimestamps=1" >> ~/.mirai/mirai.conf
echo "externalip="$ipvps >> ~/.mirai/mirai.conf
echo "maxconnections=256" >> ~/.mirai/mirai.conf
echo "masternode=1" >> ~/.mirai/mirai.conf
echo "masternodeprivkey="$genkey >> ~/.mirai/mirai.conf
echo "port=40428" >> ~/.mirai/mirai.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd smartfox
./foxd-linux-64 &
sleep 30
./fox-cli-linux64 mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd smartfox"
echo "./fox-cli-linux64 mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Smartfox.sh ~/smartfox

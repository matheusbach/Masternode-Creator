#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Mirai v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Instalando Node..."
sleep 3
cd
mkdir mirai
cd mirai
wget https://github.com/bumbacoin/Mirai-Master/files/2147373/miraid-ubu64-v111.zip
unzip miraid-ubu64-v111.zip
chmod +rwx miraid
chmod +rwx mirai-cli
./miraid &
sleep 30
./mirai-cli stop

echo "Qual o IP da sua VPS ?"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo

echo "rpcuser=mirairpc" >> ~/.mirai/mirai.conf
echo "rpcpassword=49koXmV1vwTQAHYrtucipJ8EEVitbUXaHoPZz1xmm1hf" >> ~/.mirai/mirai.conf
echo "listen=1" >> ~/.mirai/mirai.conf
echo "server=1" >> ~/.mirai/mirai.conf
echo "daemon=1" >> ~/.mirai/mirai.conf
echo "staking=0" >> ~/.mirai/mirai.conf
echo "logtimestamps=1" >> ~/.mirai/mirai.conf
echo "rpcallowip=127.0.0.1" >> ~/.mirai/mirai.conf
echo "externalip="$ipvps >> ~/.mirai/mirai.conf
echo "bind="$ipvps":14440" >> ~/.mirai/mirai.conf
echo "maxconnections=256" >> ~/.mirai/mirai.conf
echo "masternode=1" >> ~/.mirai/mirai.conf
echo "masternodeprivkey="$genkey >> ~/.mirai/mirai.conf
echo "port=14440" >> ~/.mirai/mirai.conf
echo "addnode=138.68.166.56:4444" >> ~/.mirai/mirai.conf
echo "addnode=138.68.166.56:14440" >> ~/.mirai/mirai.conf
echo "addnode=138.68.152.14:4444" >> ~/.mirai/mirai.conf
echo "addnode=138.68.152.14:14440" >> ~/.mirai/mirai.conf
echo "addnode=139.59.170.63:4444" >> ~/.mirai/mirai.conf
echo "addnode=139.59.170.63:14440" >> ~/.mirai/mirai.conf
echo "addnode=138.68.161.9:4444" >> ~/.mirai/mirai.conf
echo "addnode=138.68.161.9:14440" >> ~/.mirai/mirai.conf
echo "addnode=45.77.102.10:4444" >> ~/.mirai/mirai.conf
echo "addnode=45.77.102.10:14440" >> ~/.mirai/mirai.conf
echo "addnode=41.57.17.48:4444" >> ~/.mirai/mirai.conf
echo "addnode=41.57.17.48:14440" >> ~/.mirai/mirai.conf
echo "addnode=41.190.31.8:4444" >> ~/.mirai/mirai.conf
echo "addnode=41.190.31.8:14440" >> ~/.mirai/mirai.conf
echo "addnode=81.169.239.249:4444" >> ~/.mirai/mirai.conf
echo "addnode=81.169.239.249:14440" >> ~/.mirai/mirai.conf
echo "addnode=140.82.37.219:4444" >> ~/.mirai/mirai.conf
echo "addnode=140.82.37.219:14440" >> ~/.mirai/mirai.conf
echo "addnode=14.202.249.149:4444" >> ~/.mirai/mirai.conf
echo "addnode=14.202.249.149:14440" >> ~/.mirai/mirai.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd mirai
./miraid &
sleep 30
./mirai-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd mirai"
echo "./mirai-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Mirai.sh ~/mirai

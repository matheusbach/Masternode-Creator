#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Transcendence v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd 
cd telos
./transcendence-cli stop
cd
rm -R telos
rm -R .transcendence
rm -R Linux.zip
echo

echo "Instalando Node..."
sleep 3
wget https://github.com/phoenixkonsole/transcendence/releases/download/v1.1.0.0/Linux.zip
unzip Linux.zip
mv ~/Linux/bin ~/telos
mv ~/Linux.zip ~/telos
rm -R ~/Linux
cd
cd telos
chmod +rwx transcendenced
chmod +rwx transcendence-cli
./transcendenced &
sleep 20
./transcendence-cli stop

echo "Seu ip é $ipvps"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo

echo "daemon=1" >> ~/.transcendence/transcendence.conf
echo "staking=0" >> ~/.transcendence/transcendence.conf
echo "listen=1" >> ~/.transcendence/transcendence.conf
echo "server=1" >> ~/.transcendence/transcendence.conf
echo "logtimestamps=1" >> ~/.transcendence/transcendence.conf
echo "maxconnections=256" >> ~/.transcendence/transcendence.conf
echo "port=22123" >> ~/.transcendence/transcendence.conf
echo "masternode=1" >> ~/.transcendence/transcendence.conf
echo "externalip="$ipvps >> ~/.transcendence/transcendence.conf
echo "masternodeprivkey="$genkey >> ~/.transcendence/transcendence.conf
echo "rpcuser=transcendencerpc" >> ~/.transcendence/transcendence.conf
echo "rpcpassword=5uGhR3fzHWBSHRzzkfRztKaJC8ugPWPPRPsK2DFnpXiQ" >> ~/.transcendence/transcendence.conf
echo "addnode=80.211.1.165:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=80.211.229.121:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=140.82.27.177" >> ~/.transcendence/transcendence.conf
echo "addnode=140.82.27.177:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=207.148.3.119" >> ~/.transcendence/transcendence.conf
echo "addnode=207.148.3.119:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=51.68.191.80:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=88.99.85.219:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=95.216.156.246:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=159.69.28.237:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=51.68.191.84:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=159.69.90.189:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=159.69.33.146" >> ~/.transcendence/transcendence.conf
echo "addnode=95.216.152.134" >> ~/.transcendence/transcendence.conf
echo "addnode=54.37.226.201" >> ~/.transcendence/transcendence.conf
echo "addnode=159.69.33.171" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.218.2:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.223.145:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.222.249:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.223.0:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.220.190:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=140.82.11.40:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=45.76.164.107:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=207.246.81.122:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=207.246.91.56:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=149.28.49.149:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=207.246.127.138:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=149.28.238.162:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=140.82.9.215:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=149.28.237.24:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=45.76.5.5:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=149.28.62.231:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=208.167.233.110:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=8.12.17.218:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=8.9.6.136:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=149.28.224.44:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=63.209.35.66:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.220.107:22123 " >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.221.178:22123 " >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.221.6:22123 " >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.221.140:22123 " >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.220.88:22123 " >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.220.39:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=80.211.160.215:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=80.211.9.53:22123 " >> ~/.transcendence/transcendence.conf
echo "addnode=80.211.36.230:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=80.211.12.243:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=80.211.14.93:22123 " >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.218.139:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.219.24:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.220.63:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.221.225:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.220.47:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.220.17:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.219.9:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.219.170:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.193.138:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.220.45:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.221.1:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.221.227:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.218.47:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.218.158:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.221.5:22123" >> ~/.transcendence/transcendence.conf
echo "addnode=77.55.221.98:22123" >> ~/.transcendence/transcendence.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd telos
./transcendenced &
sleep 30
./transcendence-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd telos"
echo "./transcendence-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Telos.sh ~/telos

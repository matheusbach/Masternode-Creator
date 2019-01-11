#!/bin/bash
cd
echo "Bem vindo ao Scrypts da Bitnoob"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Cerberus"
sleep 5
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git

echo "Instalando Node..."
wget https://github.com/cerberuscore/cerberus/releases/download/0.12.1.3/cerberus_120103_linux.tar.gz
sleep 30
tar -xzvf cerberus_120103_linux.tar.gz
cd cerberus_120103_linux
./cerberusd &
sleep 10
./cerberus-cli stop

echo "Seu ip é $ipvps"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo "Escreva um nome de usuario !"
read user
echo "Escreva uma senha !"
read senha
echo

echo "addnode=104.207.128.247:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=104.238.129.5:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=104.238.159.125:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=107.150.7.177:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=107.150.7.178:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=107.161.94.152:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=107.175.28.221:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=107.175.28.222:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=107.175.28.246:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=108.61.157.93:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=108.61.191.49:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=108.61.78.62:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=13.82.194.4:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=135.19.157.7:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=137.117.54.32:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=137.135.71.62:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=137.74.42.128:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=138.201.247.67:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=14.237.99.30:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=140.82.45.111:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=140.82.45.252:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=140.82.60.101:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=144.202.1.196:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=144.202.10.10:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=144.202.9.196:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=145.239.22.219:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=146.66.179.123:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.28.126.184:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.28.232.155:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.28.238.218:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.28.38.78:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.28.40.245:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.28.44.187:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.28.48.95:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.28.49.173:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.28.58.144:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.56.142.180:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=149.56.4.247:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=155.94.233.77:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=159.203.30.14:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=159.65.38.69:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=159.69.26.212:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=159.69.42.238:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=162.208.9.237:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=162.243.66.64:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=167.99.94.51:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=173.199.115.175:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=178.128.166.148:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=178.128.176.15:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=178.212.65.184:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=178.239.225.246:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=178.239.225.249:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=178.54.20.35:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=18.188.23.76:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=184.82.100.30:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.144.158.252:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.154.23.45:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.159.128.97:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.207.107.30:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.213.209.38:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.228.233.193:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.240.242.137:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.240.242.142:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.240.242.144:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.240.242.145:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.240.242.146:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.240.242.147:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.240.242.148:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.240.242.154:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.250.205.30:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.39.195.183:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.39.195.184:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=185.39.195.185:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=188.134.9.88:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=188.213.161.238:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=188.213.165.219:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=188.68.35.36:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=188.68.46.79:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=194.135.94.188:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=194.182.65.138:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=194.182.67.136:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=194.182.76.204:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=194.182.87.123:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=195.181.209.189:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=195.181.210.235:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=195.181.219.210:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=195.181.219.73:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=195.201.236.153:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=195.201.236.154:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=195.201.94.56:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=198.23.228.218:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=198.96.90.38:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=204.152.220.70:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.148.20.184:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.148.22.253:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.148.23.198:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.148.23.249:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.148.29.119:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.148.31.73:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.246.122.16:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.246.127.127:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.246.80.23:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=207.246.89.60:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=208.167.242.135:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=208.167.249.195:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=212.237.2.229:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=212.237.25.171:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=212.237.26.149:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=212.237.29.74:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=212.237.4.77:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=212.237.51.73:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=212.237.52.206:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=212.237.57.208:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=212.237.61.21:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=213.166.68.168:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=217.175.0.72:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=217.61.110.141:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=217.61.4.201:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=217.61.7.52:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=35.211.173.10:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=37.60.177.38:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=40.117.226.53:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=40.121.110.238:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.32.5.204:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.55.152.37:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.63.10.181:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.63.16.254:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.63.41.25:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.76.10.133:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.76.167.163:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.76.193.50:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.77.149.181:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.77.155.201:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.77.155.23:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.77.155.5:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.77.156.141:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.77.189.27:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=45.77.207.90:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=46.149.182.41:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=46.46.112.91:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=5.249.151.139:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=50.59.59.155:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=68.183.111.72:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=77.37.255.229:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=77.37.255.230:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=78.47.113.57:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=8.12.17.178:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=8.12.17.24:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=8.12.18.74:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=8.6.193.156:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=8.9.37.50:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.209.233.144:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.102.160:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.107.84:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.116.103:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.12.127:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.135.114:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.137.19:10666" >> ~/.cerberuscore/cerberus.conf
echo "ddnode=80.211.141.177:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.152.192:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.16.151:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.160.73:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.167.174:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.169.61:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.189.69:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.197.117:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.197.252:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.224.37:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.230.194:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.41.222:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.42.125:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.57.101:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.62.237:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.7.52:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.72.71:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.72.94:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.80.237:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.85.205:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.86.223:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.92.128:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.92.233:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=80.211.94.148:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=82.207.119.64:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=84.104.1.152:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=85.255.13.46:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=89.36.212.101:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=89.36.213.83:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=89.36.215.69:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=89.36.216.170:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=89.38.146.125:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=89.38.151.135:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=89.40.112.68:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=89.40.125.76:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=89.47.161.76:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=93.104.215.169:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=94.16.122.120:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=94.16.123.142:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=94.177.175.228:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=94.177.218.29:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=94.177.238.250:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=94.177.246.205:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=95.168.199.10:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=95.168.199.7:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=95.179.155.81:10666" >> ~/.cerberuscore/cerberus.conf
echo "addnode=95.179.168.44:10666" >> ~/.cerberuscore/cerberus.conf
echo "rpcuser="$user >> ~/.cerberuscore/cerberus.conf
echo "rpcpassword="$senha >> ~/.cerberuscore/cerberus.conf
echo "daemon=1" >> ~/.cerberuscore/cerberus.conf
echo "staking=0" >> ~/.cerberuscore/cerberus.conf
echo "listen=1" >> ~/.cerberuscore/cerberus.conf
echo "server=1" >> ~/.cerberuscore/cerberus.conf
echo "logtimestamps=1" >> ~/.cerberuscore/cerberus.conf
echo "maxconnections=256" >> ~/.cerberuscore/cerberus.conf
echo "port=10666" >> ~/.cerberuscore/cerberus.conf
echo "masternode=1" >> ~/.cerberuscore/cerberus.conf
echo "externalip="$ipvps >> ~/.cerberuscore/cerberus.conf
echo "masternodeprivkey="$genkey >> ~/.cerberuscore/cerberus.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd cerberus_120103_linux
./cerberusd &
sleep 20
./cerberus-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd cerberus_120103_linux"
echo "./cerberus-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "Agradecemos ao Diogo Neves e ao site https://staking.world/Pages/index.aspx pela ajuda, porque sem ele não teriamos esse scrypt, Att. Bitnoob - Vinicius Ferreiro"

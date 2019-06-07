#!/bin/bash

cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Proxynode Ipv4 v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git
sudo apt install rar


echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd
rm -r prx
rm -r .prx


echo "Instalando Node..."
sleep 3
cd
mkdir prx
cd prx
wget https://github.com/ProxyNode/proxynode/releases/download/v2.0.0/Proxynode-Linux-MN-v2.0.0.zip
unzip Proxynode-Linux-MN-v2.0.0.zip
chmod +rwx prxd
chmod +rwx prx-cli
chmod +rwx prx-tx
./prxd &
sleep 20
./prx-cli stop

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.Prx/prx.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.Prx/prx.conf
echo "rpcport=12196" >> ~/.Prx/prx.conf
echo "externalip="$ipvps >> ~/.Prx/prx.conf
echo "masternodeprivkey="$genkey >> ~/.Prx/prx.conf
echo "rpcallowip=127.0.0.1" >> ~/.Prx/prx.conf
echo "listen=1" >> ~/.Prx/prx.conf
echo "server=1" >> ~/.Prx/prx.conf
echo "daemon=1" >> ~/.Prx/prx.conf
echo "maxconnections=256" >> ~/.Prx/prx.conf
echo "masternode=1" >> ~/.Prx/prx.conf
echo "bind="$ipvps >> ~/.Prx/prx.conf
echo "masternodeaddr="$ipvps:12195 >> ~/.Prx/prx.conf
echo "logtimestamps=1" >> ~/.Prx/prx.conf
echo "port=12195" >> ~/.Prx/prx.conf
curl https://raw.githubusercontent.com/ProxyNode/proxynode/master/addnodes.txt >> ~/.Prx/prx.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd prx
./prxd &
sleep 30
./prx-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd prx"
echo "./prx-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "Deverá usar o comando a baixo no console de sua wallet windows para dar start no masternode"
echo "startmasternode alias false (nomedoalias)"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Proxynodeipv4.sh ~/prx

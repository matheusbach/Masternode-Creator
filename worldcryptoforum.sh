#!/bin/bash

cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Wcf v1.1"
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
rm -r wcf
rm -r .worldcryptoforum

echo "Baixando arquivos de Pré-Atualização/Correção do node..."
cd
mkdir .worldcryptoforum
cd .worldcryptoforum
wget https://github.com/worldcryptoforum/worldcryptoforum/releases/download/v2.4/block_160004.zip
unzip block_160004.zip
rm -r block_160004.zip

echo "Instalando Node..."
sleep 3
cd
mkdir wcf
cd wcf
wget https://github.com/worldcryptoforum/worldcryptoforum/releases/download/v2.4/worldcryptoforum.linux.v2.4.zip
unzip worldcryptoforum.linux.v2.4.zip
chmod +rwx worldcryptoforum-cli
chmod +rwx worldcryptoforumd
./worldcryptoforumd &
sleep 20
./worldcryptoforum-cli stop


ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "externalip="$ipvps >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "masternodeprivkey="$genkey >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "rpcallowip=127.0.0.1" >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "listen=0" >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "server=1" >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "daemon=1" >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "masternode=1" >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "bind="$ipvps >> ~/.worldcryptoforum/worldcryptoforum.conf
echo "masternodeaddr="$ipvps:11005 >> ~/.worldcryptoforum/worldcryptoforum.conf


echo "Iniciando Masternode..."
sleep 3
cd 
cd wcf
./worldcryptoforumd &
sleep 30
./worldcryptoforum-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd wcf"
echo "./worldcryptoforum-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "Deverá usar o comando a baixo no console de sua wallet windows para dar start no masternode"
echo "masternode start-alias "rotulo da wallet""
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/worldcryptoforum.sh ~/wcf

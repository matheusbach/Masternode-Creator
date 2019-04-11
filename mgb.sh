#!/bin/bash

cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de MegaByteCoin v1.2"
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
rm -r mgb
rm -r .megabytecoin


echo "Instalando Node..."
sleep 3
cd
mkdir mgb
cd mgb
wget https://github.com/mgbytecoin/mgbcoin/releases/download/1/daemon.tar
tar -xvf daemon.tar
rm -r daemon.tar
chmod +rwx megabytecoind
chmod +rwx megabytecoin-cli 
./megabytecoind &

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.megabytecoin/megabytecoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.megabytecoin/megabytecoin.conf
echo "rpcport=19663" >> ~/.megabytecoin/megabytecoin.conf
echo "masternodeprivkey="$genkey >> ~/.megabytecoin/megabytecoin.conf
echo "rpcallowip=127.0.0.1" >> ~/.megabytecoin/megabytecoin.conf
echo "listen=1" >> ~/.megabytecoin/megabytecoin.conf
echo "server=1" >> ~/.megabytecoin/megabytecoin.conf
echo "daemon=1" >> ~/.megabytecoin/megabytecoin.conf
echo "masternode=1" >> ~/.megabytecoin/megabytecoin.conf
echo "masternodeaddr="$ipvps:19662 >> ~/.megabytecoin/megabytecoin.conf
echo "logtimestamps=1" >> ~/.megabytecoin/megabytecoin.conf
echo "port=19662" >> ~/.megabytecoin/megabytecoin.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd mgb
./megabytecoind &
sleep 30
./megabytecoin-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd mgb"
echo "./megabytecoin-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "Deverá usar o comando a baixo no console de sua wallet windows para dar start no masternode"
echo "startmasternode alias false (nomedoalias)"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/mgb.sh ~/mgb

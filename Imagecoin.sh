#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Imagecoin v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
apt-get install unzip
sudo apt-get install git

#echo "Limpando arquivos de instalações anteriores..."
#sleep 3
#cd 
#cd imagecoin
#./ImageCoin-cli stop
#cd
#rm -R imagecoin
#rm -R .imagecoincore
#rm -R ImageCoin.zip

echo "Instalando Node..."
sleep 3
cd
mkdir imagecoin
cd imagecoin
#wget https://cdn-03.anonfiles.com/z0n7Y9q9ba/4e47cdf9-1547852544/ImageCoin.zip
unzip ImageCoin.zip
./ImageCoind &
sleep 40
./ImageCoin-cli stop

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

echo "rpcuser="$user >> ~/.imagecoincore/imagecoin.conf
echo "rpcpassword="$senha >> ~/.imagecoincore/imagecoin.conf
echo "daemon=1" >> ~/.imagecoincore/imagecoin.conf
echo "staking=0" >> ~/.imagecoincore/imagecoin.conf
echo "listen=1" >> ~/.imagecoincore/imagecoin.conf
echo "server=1" >> ~/.imagecoincore/imagecoin.conf
echo "logtimestamps=1" >> ~/.imagecoincore/imagecoin.conf
echo "maxconnections=256" >> ~/.imagecoincore/imagecoin.conf
echo "port=6998" >> ~/.imagecoincore/imagecoin.conf
echo "masternode=1" >> ~/.imagecoincore/imagecoin.conf
echo "externalip="$ipvps >> ~/.imagecoincore/imagecoin.conf
echo "masternodeprivkey="$genkey >> ~/.imagecoincore/imagecoin.conf
echo "rcpport=6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=23.101.61.34" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=79.135.200.25:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=178.46.153.242:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=[2404:9400:10fc:a013::5]:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=[2001:0:9d38:78cf:2cbe:c268:373d:48ef]:6998" >> ~/.imagecoincore/imagecoin.conf
echo "addnode=[2002:96a5:c1e1::96a5:c1e1]:6998" >> ~/.imagecoincore/imagecoin.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd imagecoin
./ImageCoind &
sleep 30
./ImageCoin-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd imagecoin"
echo "./ImageCoin-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/imagecoin.sh ~/imagecoin

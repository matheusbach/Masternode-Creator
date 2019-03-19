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
sudo apt-get install git
sudo apt install rar


echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd
rm -r .pegasus
rm -r pegasuscoin
rm -r peg-linux-daemon.rar

echo "Instalando Node..."
sleep 3
cd
mkdir pegasuscoin
cd pegasuscoin
wget https://github.com/peg-dev/pegasus/releases/download/V1/peg-linux-daemon.rar
rar e peg-linux-daemon.rar
chmod +rwx pegasusd
chmod +rwx pegasus-cli
./pegasusd &
sleep 40
./pegasus-cli stop

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=pegasusrpc" >> ~/.pegasus/pegasus.conf
echo "rpcpassword=E8b5m8Q1mfkUzpJuuGZL4YtFUSk48yvAfCuVKSAGYAaB" >> ~/.pegasus/pegasus.conf
echo "daemon=1" >> ~/.pegasus/pegasus.conf
echo "staking=0" >> ~/.pegasus/pegasus.conf
echo "listen=1" >> ~/.pegasus/pegasus.conf
echo "server=1" >> ~/.pegasus/pegasus.conf
echo "logtimestamps=1" >> ~/.pegasus/pegasus.conf
echo "maxconnections=256" >> ~/.pegasus/pegasus.conf
echo "port=1515" >> ~/.pegasus/pegasus.conf
echo "masternode=1" >> ~/.pegasus/pegasus.conf
echo "externalip="$ipvps:1515 >> ~/.pegasus/pegasus.conf
echo "masternodeprivkey="$genkey >> ~/.pegasus/pegasus.conf
echo "rcpport=1515" >> ~/.pegasus/pegasus.conf
echo "addnode=188.130.251.200:1515" >> ~/.pegasus/pegasus.conf
echo "addnode=94.177.229.203:1515" >> ~/.pegasus/pegasus.conf
echo "addnode=85.214.222.42:1515" >> ~/.pegasus/pegasus.conf
echo "addnode=95.179.195.169:1515" >> ~/.pegasus/pegasus.conf
echo "addnode=46.101.90.99:1515" >> ~/.pegasus/pegasus.conf
echo "addnode=213.141.134.205:1515" >> ~/.pegasus/pegasus.conf

echo "Iniciando Masternode..."
sleep 3
cd 
cd pegasuscoin
./pegasusd &
sleep 30
./pegasus-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd pegasuscoin"
echo "./pegasus-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "Deverá usar o comando a baixo no console de sua wallet windows para dar start no masternode"
echo "startmasternode alias false (nomedoalias)"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/pegasus.sh ~/pegasuscoin

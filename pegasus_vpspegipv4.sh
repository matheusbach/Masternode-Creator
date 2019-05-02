#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Imagecoin v2.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git
sudo apt install rar
apt-get update >/dev/null 2>&1
apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" make software-properties-common \
build-essential libtool autoconf libssl-dev libboost-dev libboost-chrono-dev libboost-filesystem-dev libboost-program-options-dev \
libboost-system-dev libboost-test-dev libboost-thread-dev sudo automake git wget curl libdb4.8-dev bsdmainutils libdb4.8++-dev \
libminiupnpc-dev libgmp3-dev ufw pkg-config libevent-dev>/dev/null 2>&1



echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd
rm -r peg
rm -r .pegasus
rm -r pegasuscoin
rm -r peg-linux-daemon.rar
rm -r /usr/local/bin/pegasus-cli
rm -r /usr/local/bin/pegasusd

echo "Instalando Node..."
sleep 3
cd
wget https://github.com/peg-dev/pegasus/releases/download/V3.0.0.2/peg-linux-daemon-for-peg-vps.tar
tar -xvf peg-linux-daemon-for-peg-vps.tar
mv peg-linux-daemon-for-peg-vps ~/peg
mv peg-linux-daemon-for-peg-vps.tar ~/peg
cd
cd peg
#cp pegasus-cli /usr/local/bin
#cp pegasusd /usr/local/bin
./pegasusd &
sleep 40
./pegasus-cli stop
ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.pegasus/pegasus.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.pegasus/pegasus.conf
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
cd peg
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

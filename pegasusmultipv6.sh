#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Pegasuscoin IPv6 MultiMN v1.2"
sleep 3

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

echo "Qual seu IPv6 ?"
read ipv6
echo "Qual sua Genkey ?"
read genkey
echo "Qual rpcport usar ? MN1-1617 MN2-1618 MN3-1619 MN4-1620"
read porta

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.pegasus/pegasus.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.pegasus/pegasus.conf
echo "rpcport="$porta >> ~/.pegasus/pegasus.conf
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
./pegasusd -listen=0
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

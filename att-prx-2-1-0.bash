#!/bin/bash
cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de Cerberus v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 

echo "Pausando nodes anteriores..."
sleep 2
cd
cd prx
./prx-cli stop
cd

echo "Limpando arquivos de instalações anteriores..."
sleep 2
rm -r prx
mkdir prx

echo "Bainxando node atualizado..."
sleep 2
cd prx
wget https://github.com/ProxyNode/proxynode/releases/download/v2.1.0/prx-Linux-v2.1.0.zip
unzip prx-Linux-v2.1.0.zip
cd Linux
chmod +rwx prx-cli
chmod +rwx prxd
mv prxd ~/prx
mv prx-cli ~/prx
cd

echo "Restaurando blocos e arquivos do masternode anterior..."
sleep 2
mv .Prx .prx
cd

echo "Iniciando node atualizado..."
cd prx
./prxd &
sleep 15
./prx-cli getinfo
cd

echo "De Start na wallet windows, e de o seguinte comando aqui para verificar se esta tudo certo."
echo "cd prx"
echo "./prx-cli masternode status"

cd
mv ~/att-prx-2-1-0.bash ~/prx

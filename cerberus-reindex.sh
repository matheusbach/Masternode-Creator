#!/bin/bash
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3
echo "Será iniciado a Reatualização dos blocos da wallet de Cerberus!"

echo "Pausando a wallet..."
sleep 3
cd 
cd cerberus_120103_linux
./cerberus-cli stop
sleep 5
echo "Reiniciando sincronização dos Blocos...!
./cerberusd -reindex
sleep 5
./cerberus-cli mnsync status
echo "Se os parametros foram true, pode iniciar o novamente Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd cerberus_120103_linux"
echo "./cerberus-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
mv ~/cerberus-reindex.sh ~/cerberus_120103_linux

#!/bin/bash
cd
echo "Bem vindo ao Scrypts da Bitnoob"
echo 
echo "Será iniciado a Reatualização dos blocos da wallet de Cerberus"

cd 
cd cerberus_120103_linux
./cerberus-cli stop
sleep 3
./cerberusd -reindex
sleep 3
./cerberus-cli mnsync status
echo "Se os parametros foram true, pode iniciar o novamente Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd cerberus_120103_linux"
echo "./cerberus-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"

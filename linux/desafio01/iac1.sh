#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
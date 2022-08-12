#!/bin/bash


echo"Criando diretorio /publico /adm /ven /sec no diretorio raiz "

mkdir /publico 
mkdir /adm
mkdir /ven
mkdir /sec

echo "Finalizado a criaçao de diretorios"

echo "Criando usuarios..."

useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd 123)
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd 123)
useradd joao -c "Joao Silva" -m -s /bin/bash -p $(openssl passwd 123)

useradd debora -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd 123)
useradd sebastiana -c "Sebastiana Silva" -m -s /bin/bash -p $(openssl passwd 123)
useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd 123)

useradd josefina -c "Josefina Silva" -m -s /bin/bash -p $(openssl passwd 123)
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd 123)
useradd rogerio -c "Rogerio Silva" -m -s /bin/bash -p $(openssl passwd 123)  

echo "Finalizado Criação de Usuarios"

echo "iniciando criação de grupo"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo"Finalizado  criaçao de grupos"

echo"add usuarios aos grupos"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Finalizado associaçao de usuarios aos grupos"

echo "permissoes de grupos e diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico  
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo"Finalizado scripts....... "


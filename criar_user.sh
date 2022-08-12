#!/bin/bash

echo"Criando usuario em serie...."

useradd convidade1 -c "convidado especial1" -s /bin/bash -m -p $(openssl passwd 123)
useradd convidade2 -c "convidado especial2" -s /bin/bash -m -p $(openssl passwd 123)
useradd convidade3 -c "convidado especial3" -s /bin/bash -m -p $(openssl passwd 123)

echo"Fim ......"


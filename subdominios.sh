#!/bin/bash

clear
echo "=========== SCAN DE SUBDOMÍNIOS =========="
read -p "Digite o domínio (ex: dominio.com.br): " dominio
echo ""
echo "[*] Buscando subdomínios válidos em $dominio..."
echo ""

for site in $(cat subdominios.txt); do
    resultado=$(dig "$site.$dominio" +noall +answer)
    echo "$resultado" | grep "^$site\." > /dev/null && echo "$resultado"
done

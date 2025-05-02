#!/bin/bash

echo "===== Scanner de Portas com Netcat ====="
read -p "Digite o prefixo da rede (ex: 192.168.1): " REDE
read -p "Digite a porta inicial: " PORTA_INICIAL
read -p "Digite a porta final: " PORTA_FINAL

# Verifica se os dados são válidos
if [[ -z "$REDE" || -z "$PORTA_INICIAL" || -z "$PORTA_FINAL" ]]; then
    echo "Entrada inválida. Encerrando."
    exit 1
fi

echo "Iniciando varredura de $REDE.1 a $REDE.254 nas portas $PORTA_INICIAL até $PORTA_FINAL..."

for i in $(seq 1 254); do
    IP="$REDE.$i"
    echo "Escaneando $IP..."

    for PORT in $(seq $PORTA_INICIAL $PORTA_FINAL); do
        nc -nv -z -w1 $IP $PORT 2>&1 | grep -E "succeeded|open"
    done
done

echo "Varredura finalizada."

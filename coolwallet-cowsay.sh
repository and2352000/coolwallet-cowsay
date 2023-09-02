#!/bin/bash
DATA="$(curl -s -X GET 'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin%2Cethereum&vs_currencies=usd' -H 'accept: application/json')"
bitcoin="$(echo $DATA | jq '.bitcoin.usd')"
ethereum="$(echo $DATA | jq '.ethereum.usd')"
echo "Bitcoin  ₿ \$$bitcoin
Ethereum ⟠ \$$ethereum"

echo "Coolwallet Pro Say Hi!" | cowsay -f coolwallet-p -n

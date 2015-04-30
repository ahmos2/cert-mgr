#!/bin/sh
echo Making key for $1
openssl genrsa -out data/$1.key 4096

echo Making Certificate Signing Request
openssl req -new -key data/$1.key -out data/$1.csr

echo Signing with root CA
openssl x509 -req -in data/$1.csr -CA data/rootCA.pem -CAkey data/rootCA.key -CAcreateserial -out data/$1.crt -days 500

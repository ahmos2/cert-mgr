#!/bin/sh
echo Making key for $1
openssl genrsa -out $1.key 4096

echo Making Certificate Signing Request
openssl req -new -key $1.key -out $1.csr

echo Signing with root CA
openssl x509 -req -in $1.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out $1.crt -days 500

#!/bin/bash
openssl genrsa -out data/rootCA.key 4096
openssl req -x509 -new -nodes -key data/rootCA.key -days 1024 -out data/rootCA.pem

#!/bin/bash

if [ ! -f server.crt ]; then
  echo "Generating self-signed certificate"
  openssl genrsa -des3 -passout pass:Un1c0rn -out server.pass.key 2048
  openssl rsa -passin pass:Un1c0rn -in server.pass.key -out server.key
  rm server.pass.key
  openssl req -new -key server.key -out server.csr -subj "/C=US/ST=Kin Street/L=Kin City/O=Kin/CN=kin.today.dev"
  openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
fi

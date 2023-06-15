#!/bin/bash

openssl genpkey -algorithm RSA -out private.key
openssl req -new -key private.key -out csr.csr
openssl req -x509 -sha256 -days 365 -key private.key -in csr.csr -out certificate.crt

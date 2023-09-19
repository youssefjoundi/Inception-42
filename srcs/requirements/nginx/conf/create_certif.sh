#!/bin/bash

# Set the certificate and private key filenames
CERT_FILE="certificate.crt"
KEY_FILE="private.key"

# Set the subject information for the certificate
SUBJECT="/C=MA/ST=BenGuerrir/L=BenGuerrir/O=Yojoundi Inc/CN=SITE_HOSTNAME"

# Generate the private key
openssl genpkey -algorithm RSA -out "$KEY_FILE"

# Generate the certificate signing request (CSR)
openssl req -new -key "$KEY_FILE" -out "${KEY_FILE}.csr" -subj "$SUBJECT"

# Generate the self-signed certificate
openssl x509 -req -in "${KEY_FILE}.csr" -signkey "$KEY_FILE" -out "$CERT_FILE"

# Cleanup the CSR file
rm "${KEY_FILE}.csr"

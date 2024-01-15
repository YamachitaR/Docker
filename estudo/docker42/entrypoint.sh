#!/bin/bash
set -e

# Generate TLS certificate if needed
if [ ! -f /etc/nginx/certs/server.crt ] || [ ! -f /etc/nginx/certs/server.key ]; then
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/certs/server.key -out /etc/nginx/certs/server.crt -subj "/CN=localhost"
fi

# Your additional setup or initialization steps can go here

# Run the CMD from the Dockerfile
exec "$@"

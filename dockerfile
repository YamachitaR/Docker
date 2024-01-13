FROM debian:bullseye-slim

# Instale o NGINX e OpenSSL
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/*

# Configurações NGINX para suportar apenas TLSv1.2 ou TLSv1.3
RUN openssl dhparam -out /etc/nginx/dhparam.pem 2048 && \
    sed -i 's/#\?ssl_protocols.*/ssl_protocols TLSv1.2 TLSv1.3;/' /etc/nginx/nginx.conf && \
    sed -i 's/#\?ssl_ciphers.*/ssl_ciphers "TLS_AES_128_GCM_SHA256:TLS_AES_256_GCM_SHA384";/' /etc/nginx/nginx.conf && \
    sed -i 's/#\?ssl_dhparam.*/ssl_dhparam \/etc\/nginx\/dhparam.pem;/' /etc/nginx/nginx.conf

# Copie o arquivo de configuração personalizado (opcional)
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

# Use a imagem base Debian
FROM debian:stable-slim

# Atualize a lista de pacotes e instale o NGINX
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copie um arquivo de configuração personalizado, se necessário
COPY nginx.conf /etc/nginx/nginx.conf

# Exponha a porta 80
EXPOSE 80

# Comando para iniciar o NGINX no modo foreground
CMD ["nginx", "-g", "daemon off;"]

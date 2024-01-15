# Use a imagem Debian como base
FROM debian:stable-slim

# Atualize os repositórios e instale o NGINX
RUN apt-get update && apt-get install -y nginx

# Copie o arquivo de configuração personalizado para o contêiner
COPY nginx.conf /etc/nginx/nginx.conf

# Exponha a porta 443
EXPOSE 443

# Comando para iniciar o NGINX
CMD ["nginx", "-g", "daemon off;"]

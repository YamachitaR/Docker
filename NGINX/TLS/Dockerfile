# Use a imagem base Debian
FROM debian:stable-slim


# Install nginx and openssl
RUN apt update -y && apt upgrade -y && \
	apt install nginx -y && apt install openssl -y

# Generate a self-signed ssl certificate
RUN openssl req -batch -x509 -sha256 -nodes -newkey rsa:2048 -days 365 \
	-keyout /etc/ssl/private/localhost.key \
	-out /etc/ssl/certs/localhost.crt

# Copie um arquivo de configuração personalizado, se necessário
COPY nginx.conf /etc/nginx/nginx.conf

# Exponha a porta 
EXPOSE 443

# Comando para iniciar o NGINX no modo foreground
CMD ["nginx", "-g", "daemon off;"]



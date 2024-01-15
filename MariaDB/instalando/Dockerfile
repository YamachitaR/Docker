# Nesse exemplo so vamos instalar

# Use Debian as the base image
FROM debian:bullseye

# Instale o MariaDB Server
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# No terminal criaremos a imagem: docker build -t imagemMaria .
# Vamos exercutar o contêiner  com terminal: docker run -it imagemMaria
# Um modo de ver ser a MariaDB esta configurado é ver sua versão: mysql --version

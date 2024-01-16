# Use a imagem do debian
FROM debian

# isso vai permitir chamar mariadb
RUN groupadd -r mysql && useradd -r -g mysql mysql

# Atualize os pacotes e instale o MariaDB
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*



# Expor a porta padrão do MariaDB
EXPOSE 3306

# Comando a ser executado quando o contêiner for iniciado
CMD ["service", "mariadb", "start"]


# No terminal criaremos a imagem: docker build -t imagemMaria .
# Vamos exercutar o contêiner  com terminal: docker run -it imagemMaria
# Um modo de ver ser a MariaDB esta configurado é ver sua versão: mysql --version

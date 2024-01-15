# Use Debian as the base image
FROM debian:bullseye

# Instale o MariaDB Server
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# Configurar MariaDB
RUN echo "[mysqld]" >> /etc/mysql/mariadb.conf.d/50-server.cnf && \
    echo "bind-address = 0.0.0.0" >> /etc/mysql/mariadb.conf.d/50-server.cnf && \
    echo "skip-name-resolve" >> /etc/mysql/mariadb.conf.d/50-server.cnf

# Inicializar o serviço MariaDB
CMD ["mysqld"]

# Expor a porta do MariaDB (opcional, dependendo da sua configuração)
EXPOSE 3306

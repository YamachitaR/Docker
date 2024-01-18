# Usando a imagem base Debian Bullseye
FROM debian:bullseye

# Atualizando e instalando o servidor MariaDB
RUN apt update -y && apt upgrade -y && \
    apt install mariadb-server -y

# Criando diretórios e ajustando permissões
RUN mkdir -p /var/lib/mysql /var/run/mysqld && \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld && \
    chmod 755 /var/run/mysqld

# Copiando arquivos de configuração e scripts
COPY ./conf/my.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/entrypoint.sh entrypoint.sh

# Ajustando permissões dos arquivos copiados
RUN chmod 644 /etc/mysql/mariadb.conf.d/my.cnf && \
    chmod +x entrypoint.sh

# Definindo o usuário para mysql
USER mysql

# Expondo a porta 3306 para conexões externas
EXPOSE 3306

# Definindo o ponto de entrada do contêiner como o script entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]


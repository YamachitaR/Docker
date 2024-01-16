# Base da image
FROM debian

# Instalando mariadb-server
RUN apt update -y && apt upgrade -y && apt install mariadb-server -y

# Por padrão o MariaDB está vinculado ao localhost, não permite conexões remotas
# Esta configuração permite conexões remotas de qualquer host (no nosso caso, outros containers)
RUN echo "[mysqld] \n\
skip-networking=0 \n\
skip-bind-address" >> /etc/mysql/my.cnf

# Inicie o serviço mariadb e crie um banco de dados e usuário para wordpress
RUN service mariadb start && \
	mariadb -u root -e \
	"CREATE DATABASE IF NOT EXISTS wordpress_db; \
	CREATE USER 'wuser'@'%' identified by 'wpass'; \
	GRANT ALL ON wordpress_db.* TO 'wuser'@'%' IDENTIFIED BY 'wpass'; \
	FLUSH PRIVILEGES;" && \
	service mariadb stop

# Start the mariadb service when the container is run
CMD ["mysqld_safe"]

# Fonte https://github.com/LucasKuhn/inception/blob/main/srcs/requirements/mariadb/Dockerfile
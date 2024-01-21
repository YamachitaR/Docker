FROM debian:bullseye

RUN apt update -y && apt upgrade -y && \
    apt install mariadb-server -y

RUN mkdir -p /var/lib/mysql /var/run/mysqld && \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld && \
    chmod 755 /var/run/mysqld

RUN echo "[mysqld] \n\
skip-networking=0 \n\
skip-bind-address" >> /etc/mysql/my.cnf

COPY ./tools/entrypoint.sh entrypoint.sh

RUN    chmod +x entrypoint.sh

USER mysql

EXPOSE 3306

ENTRYPOINT [ "/entrypoint.sh" ]
FROM debian:latest

RUN apt-get update && apt-get install -y mariadb-server

ENV MYSQL_ROOT_PASSWORD=my_password

EXPOSE 3306

#RUN sh -c mysql_secure_installation --set-password=my_password --remove-anonymous-users --remove-expired-passwords --remove-remote-root

CMD [systemctl start mariadb]
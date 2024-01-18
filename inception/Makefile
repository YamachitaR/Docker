
LOGIN = ryoshio-
PATH_COMPOSE = ./srcs/docker-compose.yml
PATH_VOLUME	= /home/$(LOGIN)/data


all: build



build:
	sudo mkdir -p $(PATH_VOLUME)/wordpress
	sudo mkdir -p $(PATH_VOLUME)/mariadb
	sudo docker-compose --file=$(PATH_COMPOSE) up --build --detach 
	sudo grep $(LOGIN).42.fr /etc/hosts || echo "127.0.0.1 $(LOGIN).42.fr" | sudo tee -a /etc/hosts

up:
	docker-compose --file=$(PATH_COMPOSE) up --build --detach 

down:
	docker-compose --file=$(PATH_COMPOSE) down --rmi all --remove-orphans -v

start:
	docker-compose --file=$(PATH_COMPOSE) start

stop:
	docker-compose --file=$(PATH_COMPOSE) stop

# pensar colocar ls

clean: down

fclean: clean
	sudo rm -rf $(PATH_VOLUME)
	
	
re: fclean all


.PHONY: all run up down start stop ls clean fclean re 





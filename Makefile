LOGIN := rpaulino-e
HOST_NAME := $(LOGIN).42.fr

DOCKER_PATH := srcs/

FOLDERS := mariadb wordpress
VOLUME := $(addprefix $(HOME)/$(LOGIN)/data/, $(FOLDERS))

all: | $(VOLUME)
	@sudo chmod a+w /etc/hosts && sudo cat /etc/hosts | grep $(HOST_NAME) || \
	sudo echo "127.0.0.1 $(HOST_NAME)" >> /etc/hosts
	docker-compose -f $(DOCKER_PATH)docker-compose.yml up

build: | $(VOLUME)
	@sudo chmod a+w /etc/hosts && sudo cat /etc/hosts | grep $(HOST_NAME) || \
	sudo echo "127.0.0.1 $(HOST_NAME)" >> /etc/hosts
	docker-compose -f $(DOCKER_PATH)docker-compose.yml up --build

ls:
	@docker-compose -f $(DOCKER_PATH)docker-compose.yml ps

volumes:
	docker volume ls

networks:
	docker networks ls

$(VOLUME):
	mkdir -p $(VOLUME)

fclean:
	sudo $(RM) -r $(HOME)/$(LOGIN)
	docker-compose -f $(DOCKER_PATH)*.yml rm
	docker volume ls -q | grep 'mariadb' | xargs docker volume rm
	docker volume ls -q | grep 'wordpress' | xargs docker volume rm

re: fclean build

PHONY: all clean ls volumes build networks

DB_PATH = /Users/${USER}/data/md
WP_PATH = /Users/${USER}/data/pr
PR_PATH = /Users/${USER}/data/wp

volume: 
	mkdir -p $(DB_PATH) $(WP_PATH) $(PR_PATH)

build: 
	docker-compose -f ./srcs/docker-compose.yaml up --build 

run: 
	docker-compose -f ./srcs/docker-compose.yaml up

clean: 
	docker-compose -f ./srcs/docker-compose.yaml down -v

all: volume build 

re: remove all

fclean: clean
	rm -rf $(DB_PATH) $(WP_PATH) $(PR_PATH)
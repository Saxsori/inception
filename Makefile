
DB_PATH = /home/aaljaber/data/md
WP_PATH = /home/aaljaber/data/pr
PR_PATH = /home/aaljaber/data/wp

volume:
	mkdir -p $(DB_PATH) $(WP_PATH) $(PR_PATH)

build:
	docker-compose -f ./srcs/docker-compose.yaml build 

run:
	docker-compose -f ./srcs/docker-compose.yaml up

build_run:
	docker-compose -f ./srcs/docker-compose.yaml up --build

stop:
	docker-compose -f ./srcs/docker-compose.yaml stop

clean:
	docker-compose -f ./srcs/docker-compose.yaml down -v
	rm -rf $(DB_PATH) $(WP_PATH) $(PR_PATH)

all: volume build 

re: clean all

fclean: clean
	docker system prune -a -f

	
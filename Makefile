build:
	docker build -t nginx-image ./nginx/

run:
	docker-compose up -d

all: build run

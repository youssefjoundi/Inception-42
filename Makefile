all:
	docker compose -f srcs/docker-compose.yaml up --build -d

build:
	docker compose -f srcs/docker-compose.yaml build

run:
	docker compose -f srcs/docker-compose.yaml up -d

clear:
	docker compose  -f srcs/docker-compose.yaml down

fclear:
	docker compose  -f srcs/docker-compose.yaml down -v
	rm -rf /home/yojoundi/data/wordpress/* /home/yojoundi/data/mariadb/* \
	/home/yojoundi/data/website/* /home/yojoundi/data/jenkins/*
	docker system prune -af

re: fclear all

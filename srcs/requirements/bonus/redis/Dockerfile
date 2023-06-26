FROM debian:buster

RUN apt update && apt install -y redis-server

EXPOSE 6379

CMD ["redis-server"]
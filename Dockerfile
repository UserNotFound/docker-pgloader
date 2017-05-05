#Dockerfile
FROM dimitri/pgloader


ADD . /app
WORKDIR /app

RUN set -a && . /app/.aptible.env && sh getenv.sh

#Dockerfile
FROM dimitri/pgloader

RUN mkdir /pgloader
COPY migrate.load /pgloader/

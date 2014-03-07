NAME = kmanley/freshbeats
VERSION=1.0

.buildbase:
	docker build -t $(NAME)-base:$(VERSION) -rm - < BaseDockerfile 

.buildsrc:
	docker build -t $(NAME):$(VERSION) -rm - < Dockerfile 

.rebuildsrc:
	docker build -t $(NAME):$(VERSION) -rm --no-cache - < Dockerfile 

.runshell:
	docker run -i -t -p 5000:5000 $(NAME):$(VERSION) /bin/bash

.runweb:
	docker run -i -t -p 5000:5000 $(NAME):$(VERSION) python src/freshbeats_web.py

all: build

build: .buildbase .buildsrc

pull: .rebuildsrc

dev: .buildsrc .runshell

run: .buildsrc .runweb




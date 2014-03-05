NAME = kmanley/freshbeats
VERSION=1.0

all: build

build:
	docker build -t $(NAME):$(VERSION) -rm - < Dockerfile 

run:
	docker run -i -t -p 5000:5000 kmanley/freshbeats:$(VERSION)




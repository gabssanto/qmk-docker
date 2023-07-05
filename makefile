.PHONY: build run setup bash clean clean-all

build:
	docker-compose build

run:
	docker-compose up -d

setup:
	docker-compose exec qmk-docker bash -c "qmk setup -y"

bash:
	docker-compose exec qmk-docker bash

clean:
	docker-compose down -v --remove-orphans

clean-all:
	docker ps -a -q -f "name=qmk-docker" | xargs -r docker rm -v -f

all: build run setup

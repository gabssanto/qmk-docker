build:
	docker-compose up --build

build-nc:
	docker-compose build --no-cache

run:
	docker-compose run qmk-docker

build:
	docker build -t qmk-docker .

build-nc:
	docker build --no-cache -t qmk-docker .

run:
	docker-compose run qmk-docker

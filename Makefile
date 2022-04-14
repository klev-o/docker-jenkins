up: docker-up
down: docker-down
init: docker-down docker-pull docker-build docker-up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

show-initial-password:
	docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
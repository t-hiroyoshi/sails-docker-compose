cleancontainers:
	- docker rm -f `docker ps -aq`

cleanvolumes:
	- docker volume rm `docker volume ls -q`

cleanimages:
	- docker rmi `docker images`

cleanup:
	- docker images | awk '/<none/{print $3}' | xargs docker rmi

close:
	docker-compose -f docker-compose.dev.yml stop

dev:
	- docker-compose -f docker-compose.dev.yml up

devupdate:
	- docker-compose -f docker-compose.dev.yml build web

deploy:
	docker-compose -f docker-compose.yml up -d --build

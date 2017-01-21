build:
	sudo docker build -t apache-php .

run:
	sudo docker run -d -p 80:80 -P --name test_apache-php apache-php

stop:
	sudo docker stop test_caddy-php 

rm:
	sudo docker rm test_caddy-php 
	##sudo docker rmi caddy-php 


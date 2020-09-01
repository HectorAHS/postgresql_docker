# postgresql_docker
Build postgresql docker container

	docker build -t hhuaranga/postgresql .
	docker login
	docker push hhuaranga/postgresql

# Nota
Solo el yaml del despliegue es necesario, los ingress del LB se crean directamente desde Rancher, de momento
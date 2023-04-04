build:
	sudo docker build --add-host=www.impact.lo:127.0.0.1 -t ipci/server - < Dockerfile

sh:
	sudo docker run --rm -it --entrypoint bash ipci/server

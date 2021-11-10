build:
	sudo docker build -t ipci/server - < Dockerfile

sh:
	sudo docker run --rm -it --entrypoint bash ipci/server

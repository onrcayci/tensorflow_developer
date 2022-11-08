SHELL = bash

build: Dockerfile
	docker build -t jupyterlab .

run: notebooks
	docker run -p 8000:8000 -v ${PWD}/notebooks:/app --name jupyterlab -d jupyterlab:latest

stop:
	docker stop jupyterlab

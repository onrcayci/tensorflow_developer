FROM python:3.10-slim

RUN apt-get update && \
	apt-get upgrade -y && \
	pip install -U pip wheel && \
	pip install jupyterlab tensorflow numpy pandas matplotlib scipy seaborn

WORKDIR  /app

CMD jupyter-lab --allow-root --ip "0.0.0.0" --port 8000 --no-browser

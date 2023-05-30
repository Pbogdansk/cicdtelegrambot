FROM python:latest
WORKDIR /src/app
COPY ./ ./
RUN /bin/bash -c 'pip install -r requirements-all.txt'

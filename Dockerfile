FROM ubuntu:latest

RUN echo "hello world!"

ARG name
RUN echo "Hello $name!"

WORKDIR app
COPY main.py ./main.py

ENTRYPOINT ['python3', 'main.py']
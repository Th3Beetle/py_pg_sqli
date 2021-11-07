FROM ubuntu:16.04

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN apt-get update
RUN apt-get install -y locales
RUN apt-get install -y python3 python3-pip
RUN python3 -m pip install --upgrade "pip < 20"
RUN python3 -m pip install flask
RUN python3 -m pip install psycopg2-binary


COPY ./main.py /app/main.py


CMD flask run

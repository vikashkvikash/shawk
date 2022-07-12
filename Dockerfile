# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /python-docker
RUN pip install flask
RUN pip freeze > requirements.txt

RUN pip3 install -r requirements.txt

COPY . .
ENV FLASK_APP=web.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


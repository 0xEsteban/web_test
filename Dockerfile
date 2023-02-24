FROM python:3.11.2-alpine

MAINTAINER Esteban

WORKDIR /web

COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
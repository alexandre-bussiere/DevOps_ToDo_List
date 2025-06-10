FROM python:3-alpine

RUN apk add build-base

ADD . /code
WORKDIR /code

COPY requirements.txt .
COPY test-requirements.txt .
RUN pip install -r test-requirements.txt

RUN pip install gunicorn

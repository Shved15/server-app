FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt
RUN pip install -r /temp/requirements.txt
COPY server-app /server-app

WORKDIR /server-app
EXPOSE 8000

RUN adduser --disabled-password server-user

USER server-user
FROM python:3.8.3-alpine3.10

WORKDIR /app

COPY requirements.txt /app
COPY .flake8 /app
RUN apk --no-cache add --virtual .build build-base=0.5-r1 && \
    pip install --no-cache-dir -r requirements.txt && \
    apk --no-cache del .build

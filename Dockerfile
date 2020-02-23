# Start writing your Dockerfile easily
FROM python:3.6-alpine

RUN apk update && \
    apk add --no-cache vim bash

RUN python3 -m pip install tensorflow

RUN python3 -m pip install sklearn

RUN git clone https://github.com/minimaxir/textgenrnn.git /opt/textgenrnn

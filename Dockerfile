# Start writing your Dockerfile easily
FROM python:3.6-slim-stretch

RUN apk update && \
    apk add --no-cache vim bash

RUN python -m pip install tensorflow

RUN python -m pip install sklearn

RUN git clone https://github.com/minimaxir/textgenrnn.git /opt/textgenrnn

# Start writing your Dockerfile easily
FROM alpine:3.11

RUN apk update && \
    apk add --no-cache vim bash

RUN apk add python3.6

RUN python3 -m pip install tensorflow

RUN python3 -m pip install sklearn

RUN git clone https://github.com/minimaxir/textgenrnn.git /opt/textgenrnn

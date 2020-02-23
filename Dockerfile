FROM python:3.6-slim-stretch

RUN apt-get update && \
    apt-get -y install vim bash git

RUN python -m pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow_cpu-2.1.0-cp36-cp36m-manylinux2010_x86_64.whl

RUN python -m pip install sklearn

RUN git clone https://github.com/minimaxir/textgenrnn.git /opt/textgenrnnls

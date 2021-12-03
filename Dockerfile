FROM ubuntu:20.04

RUN apt update
RUN apt install -y python3 python3-pip

COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt

RUN sudachipy link -t full

ENV APP_PATH=/home/naoki/pytorch_study/text_gen_seq2seq
WORKDIR ${APP_PATH}
ENV HOME=${APP_PATH}
ENV USERNAME=user
ENV PYTHONPATH=${APP_PATH}

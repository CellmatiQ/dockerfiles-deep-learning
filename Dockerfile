# | ubuntu:16.04
# | -
# | -- nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04 -- https://hub.docker.com/r/nvidia/cuda/
# | ---
# | ---- tensorflow/tensorflow:latest-devel-gpu-py3 -- https://hub.docker.com/r/tensorflow/tensorflow/

FROM tensorflow/tensorflow:latest-devel-gpu-py3

MAINTAINER Tassilo Waldraff <github@cellmatiq.com>

ARG KERAS_VERSION=1.2.2

RUN pip3 --no-cache-dir install --no-dependencies git+https://github.com/fchollet/keras.git@${KERAS_VERSION}

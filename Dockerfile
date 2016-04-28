FROM ubuntu:latest

RUN apt-get update
RUN apt-get purge -y python.*

RUN apt-get install -y build-essential libssl-dev gfortran gcc g++ python3 python3-dev python3-pip

RUN cd /usr/local/bin \
  && ln -s /usr/bin/easy_install-3.4 easy_install \
  && ln -s /usr/bin/pip3 pip \
  && ln -s /usr/bin/pydoc3 pydoc \
  && ln -s /usr/bin/python3 python \
  && ln -s /usr/bin/python-config3 python-config

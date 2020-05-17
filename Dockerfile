#python:3.7.7
FROM python:3.7.7

MAINTAINER The python Project <lqq@sioiot.com>

ADD requirements.txt /opt/requirements.txt 
RUN python -m pip --no-cache-dir install --upgrade pip && pip --no-cache-dir install -r /opt/requirements.txt


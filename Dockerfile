FROM python:3.9-bullseye

USER root

ARG CONTAINER_DIR=/opt/asr

RUN apt-get update && \
    apt-get install -y gdb libc6-dbg dpkg-dev && \
    mkdir -p ${CONTAINER_DIR} && \
    ulimit -c unlimited && \
    mkdir -p /var/cores

ENV PYTHONFAULTHANDLER=1

COPY requirements.txt /tmp
COPY coqui_worker ${CONTAINER_DIR}/coqui_worker
COPY run.sh ${CONTAINER_DIR}/run.sh

RUN pip install -U setuptools pip && \
    pip install wheel && \
    pip install -r /tmp/requirements.txt && \
    pip install https://github.com/coqui-ai/STT/releases/download/v1.4.0/stt-1.4.0-cp39-cp39-linux_aarch64.whl

WORKDIR ${CONTAINER_DIR}

CMD ["./run.sh"]

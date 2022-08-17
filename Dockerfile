FROM python:3.9-bullseye

USER root

ARG CONTAINER_DIR=/opt/asr

RUN mkdir -p ${CONTAINER_DIR} && \
    python3.9 -m venv ${CONTAINER_DIR}/venv

ENV PYTHONFAULTHANDLER=1
ENV PATH="${CONTAINER_DIR}/venv/bin:${PATH}"

COPY requirements.txt /tmp
COPY coqui_worker ${CONTAINER_DIR}/coqui_worker
COPY run.sh ${CONTAINER_DIR}/run.sh

RUN pip install -U setuptools pip && \
    pip install wheel && \
    pip install -r /tmp/requirements.txt && \
    pip install https://github.com/coqui-ai/STT/releases/download/v1.4.0-alpha.6/stt-1.4.0a6-cp39-cp39-linux_aarch64.whl

WORKDIR ${CONTAINER_DIR}

CMD ["./run.sh"]

FROM python:3.6.0

RUN useradd --system turnex && \
    mkdir /app && \
    chown app:app /app

ADD requirements.txt entrypoint-*.sh manage.py /app/
ADD turnex /app/

RUN pip install -r /app/requirements.txt

VOLUME ["/app"]
USER turnex
WORKDIR /app
ENV PYTHONUNBUFFERED 1

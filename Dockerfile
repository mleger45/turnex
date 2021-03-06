FROM python:3.5

RUN useradd --system app && \
    mkdir /app && \
    chown app:app /app

ADD requirements.txt entrypoint-*.sh manage.py /app/

ADD . /app/

RUN chmod 777 /app/*

RUN pip install -r /app/requirements.txt

VOLUME ["/app"]
USER app
WORKDIR /app
ENV PYTHONUNBUFFERED 1
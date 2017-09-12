#! /bin/bash

daphne turnex.asgi:channel_layer --port 8000 --bind 0.0.0.0 | python manage.py runworker



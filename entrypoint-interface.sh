#!/bin/bash
cd /app && exec daphne -b 0.0.0.0 -p 8000 turnex.asgi:channel_layer

#!/bin/bash

exec /tini -- daphne -b 0.0.0.0 --access-log - "$@" turnex.asgi:channel_layer
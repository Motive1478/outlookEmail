#!/bin/bash

echo "Starting OutlookEmail"


export PORT=8080


gunicorn \
-w 1 \
-k gthread \
--threads 4 \
-b 0.0.0.0:$PORT \
web_outlook_app:app

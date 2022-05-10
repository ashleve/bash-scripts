#!/bin/sh

export DATA_SERVER_PORT=8070

# kill -9 $(lsof -t -i:$DATA_SERVER_PORT)

PYTHONUNBUFFERED=x python -m http.server $DATA_SERVER_PORT

# python -m http.server $DATA_SERVER_PORT

# start in background
# nohup python -m http.server $DATA_SERVER_PORT &

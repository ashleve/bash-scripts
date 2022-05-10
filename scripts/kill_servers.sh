#!/bin/sh

export DATA_SERVER_PORT=8070
export LABEL_STUDIO_SERVER_PORT=8080


# kill the process on given port if exists
kill -9 $(lsof -t -i:$DATA_SERVER_PORT)

# kill the process on given port if exists
kill -9 $(lsof -t -i:$LABEL_STUDIO_SERVER_PORT)

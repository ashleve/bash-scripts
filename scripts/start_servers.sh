#!/bin/sh

# verify all necessary env variables are set
bash scripts/verify_env_vars.sh

# launch data server
if ! [ $(lsof -t -i:$DATA_SERVER_PORT) ]; then
	bash scripts/launch_data_server.sh &
else
	echo "Port $DATA_SERVER_PORT for data server is already in use!"
fi

# launch label-studio server
if ! [ $(lsof -t -i:$LABEL_STUDIO_SERVER_PORT) ]; then
	bash scripts/launch_label_studio_server.sh &
else
	echo "Port $LABEL_STUDIO_SERVER_PORT for label-studio is already in use!"
fi

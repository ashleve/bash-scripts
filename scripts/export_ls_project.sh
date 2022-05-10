#!/bin/sh

source activate myenv

# set python_args to empty string if no args were passed to this bash script
python_args="-o $1"
if [ -z "$1" ]
  then
    python_args=""
fi

python src/utils/export_ls_project.py $python_args

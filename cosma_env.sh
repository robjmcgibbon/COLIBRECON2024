#!/bin/bash
#
# Set up a virtual env suitable for running the jupyter notebook

set -e

module purge
module load cosma/2024 python/3.12.4

# Create an empty venv using the recommended cosma script
venv_name="test2"
makeJupyterVenv.sh ${venv_name}

# Get venv location using same process as makeJupyterVenv.sh
HOME=`realpath ~`
APPS=`echo ${HOME} | sed 's/\/cosma\/home/\/cosma\/apps/g'`
VENV=${APPS}/venvs/${venv_name}

# Activate the venv
source "${VENV}"/bin/activate

# Install other modules
pip cache purge
pip install -r requirements.txt


#!/bin/bash -l
#
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH -o ./plot_stellar_mass_%j.out
#SBATCH -J plot_stellar_mass
#SBATCH -p cosma-analyse
#SBATCH -A do019
#SBATCH -t 00:10:00
#

# Get venv location using same process as makeJupyterVenv.sh
HOME=`realpath ~`
APPS=`echo ${HOME} | sed 's/\/cosma\/home/\/cosma\/apps/g'`
VENV=${APPS}/venvs/${venv_name}

# Activate the venv
source "${VENV}"/bin/activate

# Run the script
python plot_stellar_mass.py

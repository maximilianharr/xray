#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Greetings
printf "${NC}--------------------------------------------------${NC}\n"
printf "${GREEN}Hello $(whoami)! Welcome to $(hostname -s)!${NC}\n"
printf "${NC}--------------------------------------------------${NC}\n"

# Start Jupyter
cd /media/docker/workspace/xraybones/src
jupyter-notebook --allow-root --port 8891 --ip 0.0.0.0 --NotebookApp.token='bones'
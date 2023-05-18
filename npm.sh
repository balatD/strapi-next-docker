#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

[ ! -f .env ] || export $(grep -v '^#' .env | xargs)

# Check if the required arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <service> <npm_command>"
  exit 1
fi

SERVICE=$1
NPM_COMMAND=$2

echo
echo -e "${GREEN}Executing 'npm ${NPM_COMMAND}' within the ${SERVICE} container of ${PROJECT_NAME}.${NC}"
echo

CONTAINER_ID=$(docker-compose ps -q "$SERVICE")

docker exec -it "$CONTAINER_ID" npm "$NPM_COMMAND"

echo
echo -e "${GREEN}npm ${NPM_COMMAND} completed.${NC}"
echo

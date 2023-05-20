#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

[ ! -f .env ] || export $(grep -v '^#' .env | xargs)

if [ $# -lt 2 ] || [ $# -gt 3 ]; then
  echo "Usage: $0 <container_name> <npm_command> [npm_arguments]"
  exit 1
fi

SERVICE=$1
NPM_COMMAND=$2
NPM_COMMAND_ARGS=$3

echo
echo -e "${GREEN}Executing 'npm ${NPM_COMMAND} ${NPM_COMMAND_ARGS}' within the ${SERVICE} container of ${PROJECT_NAME}.${NC}"
echo

CONTAINER_ID=$(docker-compose ps -q "$SERVICE")

docker exec -it "$CONTAINER_ID" npm "$NPM_COMMAND" "$NPM_COMMAND_ARGS"

echo
echo -e "${GREEN}npm ${NPM_COMMAND} completed.${NC}"
echo

#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

[ ! -f .env ] || export $(grep -v '^#' .env | xargs)

docker-compose down

echo
echo -e "${GREEN}Stopped $PROJECT_URL ...${NC}"
echo
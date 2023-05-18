#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

[ ! -f .env ] || export $(grep -v '^#' .env | xargs)

if grep -q "$PROJECT_URL" /etc/hosts; then
    echo -e "${GREEN}Project url is already present in /etc/hosts.${NC}"
    echo -e "${GREEN}Running $PROJECT_URL${NC}"
    docker-compose up -d
else
    echo -e "${RED}Project url is not present in /etc/hosts.${NC}"
    echo -e "${RED}Adding project host to /etc/hosts${NC}"
    echo "127.0.0.1 $PROJECT_URL" | sudo tee -a /etc/hosts > /dev/null
    echo -e "${GREEN}Running $PROJECT_URL${NC}"
    docker-compose up -d
fi

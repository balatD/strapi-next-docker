#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

backend_dir="backend"
frontend_dir="frontend"

[ ! -f .env ] || export $(grep -v '^#' .env | xargs)

if grep -q "$PROJECT_URL" /etc/hosts; then
    echo -e "${GREEN}Project url is already present in /etc/hosts.${NC}"
    echo -e "${GREEN}Running $PROJECT_URL${NC}"
else
    echo -e "${RED}Project url is not present in /etc/hosts.${NC}"
    echo -e "${RED}Adding project host to /etc/hosts${NC}"
    echo "127.0.0.1 $PROJECT_URL" | sudo tee -a /etc/hosts > /dev/null
    echo -e "${GREEN}Running $PROJECT_URL${NC}"
fi

if [ ! -d "$backend_dir/node_modules" ] && [ ! -d "$frontend_dir/node_modules" ]; then
    echo -e "${GREEN}Creating 'node_modules' folder in $backend_dir...${NC}"
    mkdir -p "$backend_dir/node_modules"

    echo -e "${GREEN}Creating 'node_modules' folder in $frontend_dir...${NC}"
    mkdir -p "$frontend_dir/node_modules"
fi

docker-compose up -d

echo
echo
echo -e "$PROJECT_NAME Information:"
echo "+-------------------+"
echo "|"
echo "|   Frontend:  http://$PROJECT_URL"
echo "|"
echo "|   Backend:   http://$PROJECT_URL/strapi/admin"
echo "|"
echo "+-------------------+"
echo
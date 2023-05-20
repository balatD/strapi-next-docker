#!/bin/bash

[ ! -f .env ] || export $(grep -v '^#' .env | xargs)

if [[ $# -eq 0 ]]; then
  echo "Please provide the path to the import file."
  exit 1
fi

CONTAINER_ID=$(docker-compose ps -q mariadb)
IMPORT_FILE=$1

echo "Importing SQL file '${IMPORT_FILE}' into Strapi database '${DATABASE_NAME}'..."
docker exec -i ${CONTAINER_ID} sh -c "mysql -u root -p${DATABASE_ROOT_PASSWORD} ${DATABASE_NAME}" < ${IMPORT_FILE}

echo "SQL file '${IMPORT_FILE}' imported successfully."

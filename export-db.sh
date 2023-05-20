#!/bin/bash

[ ! -f .env ] || export $(grep -v '^#' .env | xargs)

TIMESTAMP=$(date +"%Y%m%d%H%M%S")
CONTAINER_ID=$(docker-compose ps -q mariadb)
OUTPUT_FILE="${TIMESTAMP}_${DATABASE_NAME}.sql"

echo "Exporting Strapi MySQL database from container: ${CONTAINER_NAME}..."
docker exec -it ${CONTAINER_ID} sh -c "mysqldump -u root -p${DATABASE_ROOT_PASSWORD} ${DATABASE_NAME}" > ${OUTPUT_FILE}

echo "Database exported to ${OUTPUT_FILE}"

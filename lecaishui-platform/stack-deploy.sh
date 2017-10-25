#!/bin/bash
docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.prod.yml config > docker-stack.yml
docker stack deploy -c docker-stack.yml --with-registry-auth lecaishui_platform
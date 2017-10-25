#!/bin/bash
docker-compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.stack.yml config > docker-stack.yml
docker stack deploy -c docker-stack.yml --with-registry-auth zoo
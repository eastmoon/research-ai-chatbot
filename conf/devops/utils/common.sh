# declare variable
DOCKER_CONTAINER_NAME=${CLI_REPO_NAME}
DC_ENV=${CLI_REPO_DIR}/cache/docker-compose.env
DC_CONF=${CLI_REPO_DIR}/conf/docker/docker-compose.yml

# Analysis compose command, default is v1.
DC_COMMAND="docker-compose"
## Detect v1
[ $(command -v docker-compose | wc -l) -gt 0 ] && DC_COMMAND="docker-compose"
## Detect v2
[ $(docker --help | grep compose | wc -l) -gt 0 ] && DC_COMMAND="docker compose"

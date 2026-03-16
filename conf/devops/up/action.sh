# Import libraries
source ${CONFIG_SHELL_PATH}/utils/common.sh

# Declare variable

# Declare variable
VAR_SRV_PORT=${TARGET_PROJECT_DEV_SERVER_PORT}
DOCKER_CONTAINER_NAME=${PROJECT_NAME}-srv

# build image
echo "> Build image"

# create docker-compose env file
[ -e ${DC_ENV} ] && rm ${DC_ENV}
echo PROJECT_NAME=${CLI_REPO_NAME} > ${DC_ENV}
echo PROJECT_DIR=${CLI_REPO_MAPPING_DIR} >> ${DC_ENV}
echo SRV_CONTAINER_NAME=${DOCKER_CONTAINER_NAME} >> ${DC_ENV}
echo SRV_PORT=${VAR_SRV_PORT} >> ${DC_ENV}

# startup with docker-compose
echo "> Start project ${PROJECT_NAME} develop server"
# Stop all service with docker-compose
if [ -e ${DC_CONF} ]; then
    ${DC_COMMAND} --file ${DC_CONF} --env-file ${DC_ENV} up -d
else
    echo "> ${DC_CONF} can not find."
fi

# Import libraries
source ${CONFIG_SHELL_PATH}/utils/common.sh

# Declare variable

# management container
echo "> Stop project ${PROJECT_NAME} develop server"
# Stop all service with docker-compose
if [ -e ${DC_CONF} ]; then
    if [ -e ${DC_ENV} ]; then
        ${DC_COMMAND} --file ${DC_CONF} --env-file ${DC_ENV} down
    else
        echo "> ${DC_ENV} can not find."
    fi
else
    echo "> ${DC_CONF} can not find."
fi

# Replace value in .env file from file in keys folder.
ENV_CONF=/repo/.env
for file in $(find ${PWD}/keys -type f); do
    key=${file##*/}
    value=$(cat ${file})
    echo ${key} : ${value}
    if [ -e ${ENV_CONF} ]; then
        if [ $(grep "${key}=" ${ENV_CONF} | wc -l) -gt 0 ]; then
            sed -i "s/${key}=.*/${key}=${value//\//\\/}/g" ${ENV_CONF}
            sed -i "s/# *${key}=/${key}=/g" ${ENV_CONF}
        else
            echo "" >> ${ENV_CONF}
            echo "# New variable ${key} from ${file}" >> ${ENV_CONF}
            echo "${key}=${value}" >> ${ENV_CONF}
        fi
    fi
done

# Copy yaml configuration to LibreChat
for file in $(find ${PWD} -type f -name "*.yml"); do
    cp ${file} /repo/${file##*/}
done

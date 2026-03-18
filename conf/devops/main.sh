# Replace value in .env file from file in keys folder.
for file in $(find ${PWD}/keys -type f); do
    key=${file##*/}
    value=$(cat ${file})
    echo ${key} : ${value}
    if [ -e /repo/.env ]; then
        sed -i "s/${key}=.*/${key}=${value}/g" /repo/.env
    fi
done

# Copy yaml configuration to LibreChat
for file in $(find ${PWD} -type f -name "*.yml"); do
    cp ${file} /repo/${file##*/}
done

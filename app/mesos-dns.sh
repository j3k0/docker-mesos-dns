#/bin/sh

if [ -z "$CONFIG" ]; then
    echo "No CONFIG variable was given. Using existing config.json file."
else
    echo "Overriding config.json with given parameter."
    echo $CONFIG > ./config.json
fi

echo "Starting mesos-dns with the following configuration:"
cat ./config.json

./mesos-dns -config ./config.json

#/bin/sh

if [ $# -eq 0 ]; then
    echo "No parameter was given - using existing config.json file."
else
    echo "Overriding config.json with given parameters."
    echo $1 > ./config.json
fi

echo "Starting mesos-dns with the following configuration:"
cat ./config.json

./mesos-dns -config ./config.json

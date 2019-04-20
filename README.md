# docker-mesos-dns

A lightweight Mesos-DNS Docker image using the official release binaries.

Configuration can be given either from a file or on 'docker run'. See usage below.

## Usage

### Configuration from a file:

`docker run -d --name mesos-dns --net host -v /path-to-some-config.json:/config.json jeko/mesos-dns`

### Configuration on 'docker run':

`docker run -d --name mesos-dns --net host -e "CONFIG={\"some_config\": \"some_value\"}" jeko/mesos-dns`

#### Example:

`docker run -d --name mesos-dns --net host -e "CONFIG={\"zk\": \"zk://127.0.0.1/mesos\", \"refreshSeconds\": 60, \"ttl\": 60, \"domain\": \"mesos\", \"port\": 53, \"resolvers\": [\"172.31.0.2\", \"8.8.8.8\"], \"timeout\": 5}" jeko/mesos-dns`

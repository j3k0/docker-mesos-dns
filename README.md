# docker-mesos-dns
A lightweight Mesos-DNS Docker image using the official release.

## Usage

### Configuration in a file:

`docker run -d --name mesos-dns --net host -v /path-to-some-config.json:/config.json argussecurity/mesos-dns`

### Configuration on 'docker run':

`docker run -d --name mesos-dns --net host argussecurity/mesos-dns '{"some_config": "some_value"}'`

#### Example:

`docker run -d --name mesos-dns --net host argussecurity/mesos-dns '{"zk": "zk://127.0.0.1/mesos", "refreshSeconds": 60, "ttl": 60, "domain": "mesos", "port": 53, "resolvers": ["172.31.0.2", "8.8.8.8"], "timeout": 5}'`

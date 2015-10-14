FROM busybox

WORKDIR /app
EXPOSE 53
ENTRYPOINT ["/bin/sh", "./mesos-dns.sh"]

ADD app/ /app
ADD https://github.com/mesosphere/mesos-dns/releases/download/v0.3.0/mesos-dns-v0.3.0-linux-amd64.gz ./mesos-dns.gz

RUN gzip -d ./mesos-dns.gz && chmod +x ./mesos-dns
FROM busybox

CMD /mesos-dns -config /config.json

EXPOSE 53

ADD config.json /

ADD https://github.com/mesosphere/mesos-dns/releases/download/v0.3.0/mesos-dns-v0.3.0-linux-amd64.gz /mesos-dns.gz

RUN gzip -d /mesos-dns.gz && chmod +x /mesos-dns

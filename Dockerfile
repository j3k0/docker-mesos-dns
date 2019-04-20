FROM alpine

WORKDIR /app
EXPOSE 53 8123
ENTRYPOINT ["/bin/sh", "./mesos-dns.sh"]

RUN apk add --no-cache libc6-compat
ADD app/ /app

# From https://circleci.com/gh/mesosphere/mesos-dns/1000
ADD https://1000-26509179-gh.circle-artifacts.com/0/tmp/circle-artifacts.eXuGXBd/mesos-dns--linux-amd64 ./mesos-dns

RUN chmod +x ./mesos-dns

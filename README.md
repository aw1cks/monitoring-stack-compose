# Monitoring stack deployment

Self-contained monitoring stack, using docker-compose.

Grafana server for metrics, with Prometheus for scraping & storing metrics, and node_exporter to export metrics from the monitoring server.

All persistent data is stored under `/var/lib/monitoring`.

A HAProxy container is used to manage inbound SSL to Grafana.

Requirements:
 - `coreutils`
 - `docker`
 - `docker-compose`
 - `m4`
 - SSL certificate in HAProxy concatenated format at `/etc/pki/tls/private/tls.pem` (make sure it's owned by UID and GID `99`)

### Usage

```shell
$ cp env{.example,}
$ $EDITOR env # set your values here
$ $EDITOR prometheus.yml # add your scrape targets here
$ read -s ldap_passwd
$ LDAP_BIND_PASSWD=$ldap_passwd ./deploy
```

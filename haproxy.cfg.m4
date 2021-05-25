defaults
    mode                http
    log                 global
    option              httplog

frontend frontend
    bind                :8080
    bind                :8443          ssl crt SSL_CERT_PATH
    redirect            scheme         https if !{ ssl_fc }
    acl                 acl_grafana    hdr(host) -i GRAFANA_VHOST
    use_backend         grafana        if acl_grafana
    default_backend     grafana

backend grafana
    server              grafana        grafana:3000

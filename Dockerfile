FROM        prom/busybox:latest
MAINTAINER  The Prometheus Authors <prometheus-developers@googlegroups.com>

COPY cmd/amtool                       /bin/amtool
COPY cmd/alertmanager                 /bin/alertmanager
COPY doc/examples/simple.yml /etc/alertmanager/alertmanager.yml

EXPOSE     9093
VOLUME     [ "/alertmanager" ]
WORKDIR    /etc/alertmanager
ENTRYPOINT [ "/bin/alertmanager" ]
CMD        [ "--storage.path=/alertmanager" ]
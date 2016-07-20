FROM rhel:7.2

MAINTAINER Alex Smith <alex.smith@redhat.com>

ADD install.sh /tmp/install.sh
RUN /bin/bash /tmp/install.sh
ADD grafana.ini /etc/grafana/grafana.ini

EXPOSE 3000

VOLUME ["/var/lib/grafana"]
VOLUME ["/var/log/grafana"]
VOLUME ["/etc/grafana"]

USER grafana

CMD ["/usr/sbin/grafana-server", "-config", "/etc/grafana/grafana.ini", "-homepath", "/usr/share/grafana", "-pidfile", "/var/run/grafana/grafana.pid"]

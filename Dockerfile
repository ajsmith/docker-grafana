FROM rhel:7.2

MAINTAINER Alex Smith <alex.smith@redhat.com>

RUN yum install -y --disablerepo=* --enablerepo=rhel-7-server-rpms https://grafanarel.s3.amazonaws.com/builds/grafana-2.6.0-1.x86_64.rpm \
    && yum clean all

VOLUME ["/var/lib/grafana"]
VOLUME ["/var/log/grafana"]
VOLUME ["/etc/grafana"]

ADD grafana.ini /etc/grafana/grafana.ini

EXPOSE 3000

ENTRYPOINT ["/usr/sbin/grafana-server", "-config", "/etc/grafana/grafana.ini", "-homepath", "/usr/share/grafana", "-pidfile", "/var/run/grafana.pid"]

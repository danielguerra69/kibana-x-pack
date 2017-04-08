FROM danielguerra/alpine-kibana:5.3.0
MAINTAINER Daniel Guerra <daniel.guerra69@gmail.com>

RUN /usr/share/kibana/bin/kibana-plugin install x-pack

EXPOSE 5601
ENTRYPOINT ["/usr/sbin/docker-entrypoint.sh"]
CMD ["/usr/share/kibana/bin/kibana"]

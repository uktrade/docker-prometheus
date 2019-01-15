FROM prom/prometheus:v2.5.0

COPY run.sh /etc/prometheus
COPY *.yml /etc/prometheus/
USER root
RUN chmod +x /etc/prometheus/run.sh
USER nobody

ENTRYPOINT []
CMD ["/etc/prometheus/run.sh"]

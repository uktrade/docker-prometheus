from prom/prometheus

ENTRYPOINT /bin/ash

COPY run.sh /etc/prometheus
COPY prometheus.yml /etc/prometheus
USER root
RUN chmod +x /etc/prometheus/run.sh
USER nobody

CMD ['/etc/prometheus/run.sh']

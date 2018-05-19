from prom/prometheus

ENTRYPOINT /bin/ash

COPY run.sh /etc/prometheus
COPY *.yml /etc/prometheus/
USER root
RUN chmod +x /etc/prometheus/run.sh
USER nobody

CMD ['/etc/prometheus/run.sh']

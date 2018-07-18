#!/bin/ash

cd /etc/prometheus

template="/etc/prometheus/prometheus.yml"

env | while IFS='=' read -r key val; do
  if grep -q "\\\${$key}" $template; then
   sed -i "s/\${$key}/$val/g" $template 
  fi
done

exec /bin/prometheus --config.file=/etc/prometheus/prometheus.yml \
                     --storage.tsdb.path=/prometheus \
                     --web.console.libraries=/etc/prometheus/console_libraries \
                     --web.console.templates=/etc/prometheus/consoles

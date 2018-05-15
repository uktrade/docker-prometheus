#!/bin/ash

template="/etc/prometheus/prometheus.yml"

env | while IFS='=' read -r key val; do
  if grep -q "\\\${$key}" $template; then
   sed -i "s/\${$key}/$val/g" $template 
  fi
done

exec /bin/prometheus

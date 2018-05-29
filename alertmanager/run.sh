#!/bin/ash

cd /etc/alertmanager

template="/etc/alertmanager/alertmanager.yml"

env | while IFS='=' read -r key val; do
  if grep -q "\\\${$key}" $template; then
   sed -i "s/\${$key}/$val/g" $template 
  fi
done

exec /bin/alertmanager --storage.path=/alertmanager --config.file=/etc/alertmanager/alertmanager.yml

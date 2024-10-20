#!/bin/sh

PROMETHEUS_URL=$(cat /run/secrets/PROMETHEUS_URL)
LOKI_URL=$(cat /run/secrets/LOKI_URL)

export PROMETHEUS_URL
export LOKI_URL

envsubst < /etc/grafana/provisioning/datasources/datasources.yml.template > /etc/grafana/provisioning/datasources/datasources.yml

exec grafana-server --homepath=/usr/share/grafana

#!/bin/sh

PROMETHEUS_USER=$(cat /run/secrets/PROMETHEUS_USER)
PROMETHEUS_PASSWORD=$(cat /run/secrets/PROMETHEUS_PASSWORD)
PROMETHEUS_API_HEALTH_CHECK_URL=$(cat /run/secrets/PROMETHEUS_API_HEALTH_CHECK_URL)

export PROMETHEUS_USER
export PROMETHEUS_PASSWORD
export PROMETHEUS_API_HEALTH_CHECK_URL

envsubst < /etc/prometheus/prometheus.yml.template > /etc/prometheus/prometheus.yml

exec prometheus --config.file=/etc/prometheus/prometheus.yml --storage.tsdb.retention.time=15d

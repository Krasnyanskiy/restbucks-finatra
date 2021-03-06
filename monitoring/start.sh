#!/bin/sh
set -euo pipefail

grafana-server --config=/usr/local/etc/grafana/grafana.ini --homepath /usr/local/share/grafana cfg:default.paths.logs=/usr/local/var/log/grafana cfg:default.paths.data=/usr/local/var/lib/grafana cfg:default.paths.plugins=/usr/local/var/lib/grafana/plugins &

telegraf -config telegraf.conf &

influxd &

influxd -config influxdb.generated.conf
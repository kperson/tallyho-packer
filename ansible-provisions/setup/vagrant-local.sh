#/bin/sh

NEWLINE=$'\n'
ip_addr="$(/sbin/ifconfig eth1 | awk -F ' *|:' '/inet addr/{print $4}')"

echo "[mesosmaster]${NEWLINE}${ip_addr} zk_id=1${NEWLINE}${NEWLINE}[slave]${NEWLINE}${NEWLINE}[master]${NEWLINE}${NEWLINE}[masterslave]${NEWLINE}${ip_addr} ansible_connection=local${NEWLINE}${NEWLINE}[runtime:children]${NEWLINE}[masterslave]${NEWLINE}[master]${NEWLINE}[slave]"

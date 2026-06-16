#!/bin/bash
while true; do
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
    MEM=$(free | grep Mem | awk '{printf "%.2f", $3/$2 * 100}')
    echo "$TIMESTAMP, $CPU, $MEM" >> usage.csv
    sleep 5
done

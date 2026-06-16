#!/bin/bash
# Список сервисов для проверки
SERVICES="docker ssh cron"

echo "Проверка состояния сервисов:"

for service in $SERVICES; do
    if systemctl is-active --quiet $service; then
        echo "✅ $service: работает"
    else
        echo "❌ $service: НЕ РАБОТАЕТ!"
    fi
done

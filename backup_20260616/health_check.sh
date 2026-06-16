#!/bin/bash
# Проверка здоровья сервера

# Получаем загрузку CPU (первые 15 минут)
LOAD=$(uptime | awk -F'load average:' '{print $2}' | cut -d',' -f1 | sed 's/ //g')

echo "Текущая загрузка CPU: $LOAD"

# Сравниваем с порогом 1.0
if (( $(echo "$LOAD > 1.0" | bc -l) )); then
    echo "🚨 ВНИМАНИЕ! Высокая загрузка CPU: $LOAD"
    echo "Рекомендуется проверить процессы: top"
else
    echo "✅ Загрузка CPU в норме"
fi

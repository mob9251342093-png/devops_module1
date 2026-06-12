#!/bin/bash
> app.log
for i in {1..50}; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') ERROR $((RANDOM % 5 + 1)) Ошибка номер $i" >> app.log
done
echo "Лог создан, строк: $(wc -l < app.log)"

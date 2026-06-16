[![Check Bash Scripts](https://github.com/mob9251342093-png/devops_module1/actions/workflows/check.yml/badge.svg)](https://github.com/mob9251342093-png/devops_module1/actions/workflows/check.yml)

# DevOps Module 1: Linux and Automation

## Scripts
- `my_first_script.sh` - выводит дату, пользователя, домашнюю директорию
- `generate_log.sh` - генерирует тестовый лог с ошибками
- `monitor.sh` - мониторит CPU и память каждые 5 секунд

## Команда анализа логов
```bash
grep ERROR app.log | awk '{print $4}' | sort | uniq -c | sort -nr | head -5


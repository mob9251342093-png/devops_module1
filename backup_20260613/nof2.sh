# 1. Всего записей
wc -l access.log

# 2. Уникальные IP
cut -d' ' -f1 access.log | sort | uniq

# 3. Какой IP чаще всех (с количеством)
cut -d' ' -f1 access.log | sort | uniq -c | sort -nr | head -1

# 4. Сколько ошибок 404
grep "404" access.log | wc -l

# 5. Топ-3 IP
cut -d' ' -f1 access.log | sort | uniq -c | sort -nr | head -3

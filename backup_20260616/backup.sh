#!/bin/bash
DATE=$(date +%Y%m%d)
BACKUP_DIR="$HOME/devops_notes/backup_$DATE"
mkdir -p "$BACKUP_DIR"

cp *.sh "$BACKUP_DIR"
echo "Бекап создан: backup_$DATE"

BACKUP_DIR="$HOME/devops_notes/backup_$DATE"

echo "Запуск резервного копирования..." | tee -a $HOME/devops_notes/backup.log

#if [ -d "$BACKUP_DIR" ] && [ "(ls -A "$BACKUP_DIR")" ]; then
if [ -d "$BACKUP_DIR" ] && [ -n "$(ls -A "$BACKUP_DIR" 2>/dev/null)" ]; then
    echo "Бекап успешно создан и папка не пуста."
else
   echo "Ошибка: папка не существует или пуста!"
   exit 1
fi

echo "Резервная копия завершена" | tee -a $HOME/devops_notes/backup.log

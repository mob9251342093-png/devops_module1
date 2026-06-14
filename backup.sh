#!/bin/bash
DATE=$(date +%Y%m%d)
BACKUP_DIR="$HOME/devops_notes/backup_$DATE"
mkdir -p "$BACKUP_DIR"

cp *.sh "$BACKUP_DIR"
echo "Бекап создан: backup_$DATE"

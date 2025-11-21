#!/bin/bash

# Настройки базы данных
DB_HOST="localhost"
DB_USER="student"
DB_PASS="toortoor"
DB_NAME="ssa8k"
BACKUP_DIR="/chto-to/bckp"

# Создание каталога для резервных копий, если он не существует
mkdir -p "/chto-to/bckp"

# Создание резервной копии базы данных
mysqldump -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" | gzip > "/chto-to/bckp/mysql_backup_$(date "+%Y-%m-%d").sql.gz"

echo "База данных успешно скопирована в $BACKUP_DIR"

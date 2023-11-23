#!/bin/bash
# Зеркальное резервное копирование домашней директории пользователя в /tmp/backup
rsync -a --delete ~/ /tmp/backup/
# Проверка статуса выполнения команды rsync
if [ $? -eq 0 ]
then
  echo "$(date) - Backup successful" >> /var/log/backup.log
else
  echo "$(date) - Backup failed" >> /var/log/backup.log
fi

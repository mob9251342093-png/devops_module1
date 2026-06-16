#!/bin/bash
if systemctl is-active --quiet nginx; then
    echo "Nginx работает"
else
    echo "Nginx упал! Запускаю..."
    systemctl start nginx
fi

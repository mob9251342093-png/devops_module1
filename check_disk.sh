#!/bin/bash
FREE=$(df / | tail -1 | awk '{print $5}' | cut -d'%' -f1)
if [ $FREE -lt 20 ]; then
    echo "Внимание! Мало места!"
else
    echo "Диск в порядке"
fi

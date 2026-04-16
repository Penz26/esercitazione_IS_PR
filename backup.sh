#!/bin/bash

# Configurazione
SOURCE_DIR="/var/www/html"
DEST_DIR="/backups/daily"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "Inizio backup dei dati..."

# BUG: Lo script fallisce se DEST_DIR non esiste. 
# Serve un comando che crei la cartella prima del backup.
cp -r $SOURCE_DIR "$DEST_DIR/backup_$TIMESTAMP"

if [ $? -eq 0 ]; then
    echo "Backup completato con successo in $DEST_DIR"
else
    echo "Errore durante il backup!"
    exit 1
fi
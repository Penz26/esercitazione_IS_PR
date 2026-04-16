#!/bin/bash

# Configurazione
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR"
DEST_DIR="$HOME/backups/daily"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "Inizio backup dei dati..."

mkdir -p "$DEST_DIR"

if cp -r "$SOURCE_DIR" "$DEST_DIR/backup_$TIMESTAMP"; then
    echo "Backup completato con successo in $DEST_DIR"
else
    echo "Errore durante il backup!"
    exit 1
fi

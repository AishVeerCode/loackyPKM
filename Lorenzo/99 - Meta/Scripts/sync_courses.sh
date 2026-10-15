#!/bin/bash
# Wrapper rapido per la sincronizzazione dei corsi universitari (Fondamenti e Programmazione)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PYTHON_BIN="$(which python3)"

case "${1:-scan}" in
    watch)
        echo "Avvio monitoraggio continuo delle cartelle dei corsi..."
        "$PYTHON_BIN" "$SCRIPT_DIR/university_sync.py" --watch
        ;;
    status)
        "$PYTHON_BIN" "$SCRIPT_DIR/university_sync.py" --status
        ;;
    scan|*)
        echo "Scansione ed elaborazione dei corsi universitari..."
        "$PYTHON_BIN" "$SCRIPT_DIR/university_sync.py" --scan
        ;;
esac

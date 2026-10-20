#!/bin/bash
# Wrapper rapido per la sincronizzazione dei corsi universitari (Fondamenti e Programmazione)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PYTHON_BIN="$(which python3)"

case "${1:-status}" in
    status)
        "$PYTHON_BIN" "$SCRIPT_DIR/university_sync.py" --status
        ;;
    scan)
        echo "Scansione ed elaborazione dei corsi universitari..."
        "$PYTHON_BIN" "$SCRIPT_DIR/university_sync.py" --scan
        ;;
    *)
        echo "Uso: $0 {status|scan}"
        exit 1
        ;;
esac

#!/bin/bash
set -euo pipefail

APP_PATH="${1:-$PWD/ВАЛЕРА.app}"

if ! command -v osacompile >/dev/null 2>&1; then
  echo "Ошибка: osacompile доступен только на macOS." >&2
  exit 1
fi

/usr/bin/osacompile -o "$APP_PATH" \
  -e 'display dialog "ВАЛЕРА 1 15" with title "ВАЛЕРА" buttons {"OK"} default button "OK"'

echo "Готово: $APP_PATH"

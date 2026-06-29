#!/usr/bin/env bash
# Local preview server for the al-folio site.
# Sets the Homebrew Ruby on PATH and a UTF-8 locale (needed for the ö/ß/– in the
# content), then starts Jekyll on http://127.0.0.1:4000.
set -euo pipefail
cd "$(dirname "$0")/.."
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LANG="${LANG:-en_US.UTF-8}"
export LC_ALL="${LC_ALL:-en_US.UTF-8}"
exec bundle exec jekyll serve --host 127.0.0.1 --port 4000 "$@"

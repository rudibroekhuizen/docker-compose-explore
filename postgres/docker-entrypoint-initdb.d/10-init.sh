#/bin/bash
set -e

# Override settings
echo "include_dir = '/conf.d'" >> "$PGDATA/postgresql.conf"

#!/bin/bash

set -euo pipefail

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

for dir in "${BASE_DIR}"/*/; do
    compose_file="${dir}/docker-compose.yml"
    if [ -f "$compose_file" ]; then
        echo "🔄 Restarting $(basename "$dir")..."
        (cd "$dir" && docker compose down && docker compose up -d)
    else
        echo "⚠️ Skipping $(basename "$dir"): no docker-compose.yml found"
    fi
done

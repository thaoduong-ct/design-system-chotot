#!/bin/bash
# Serve all generated screens from the local-host folder
# Usage: bash serve.sh [port]

PORT=${1:-8080}
DIR="/sessions/bold-jolly-meitner/mnt/ds-chotot-figma-design/local-host"

# Kill any existing server on this port
lsof -ti:$PORT | xargs kill -9 2>/dev/null || true

# Ensure local-host directory exists
mkdir -p "$DIR"

# Start server
cd "$DIR"
nohup python3 -m http.server $PORT > /dev/null 2>&1 &
SERVER_PID=$!

echo "Screen server started:"
echo "  URL:  http://localhost:$PORT"
echo "  Dir:  $DIR"
echo "  PID:  $SERVER_PID"
echo ""
echo "All screens are browsable at http://localhost:$PORT/"
echo "To stop: kill $SERVER_PID"

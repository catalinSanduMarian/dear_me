#!/usr/bin/env bash
# =============================================================================
# do_run_app.sh — Run dear_me Flutter app as a headless web server
#
# Usage:  ./run_scripts/linux/do_run_app.sh
#
# Starts Flutter web-server on port 3000, accessible from host browser at:
#   http://localhost:3000
#
# Press r = hot-reload, R = hot-restart, q = quit
# Ctrl+C stops everything.
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

# ── Log directory ────────────────────────────────────────────────────────────
LOG_DIR="$SCRIPT_DIR/logs/frontend"
mkdir -p "$LOG_DIR"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
FRONTEND_LOG="$LOG_DIR/${TIMESTAMP}.log"

# Keep only last 10 logs
ls -t "$LOG_DIR"/*.log 2>/dev/null | tail -n +11 | xargs rm -f 2>/dev/null || true

# ── Cleanup on exit ──────────────────────────────────────────────────────────
cleanup() {
    echo ""
    echo "[dear_me] Shutting down..."
    echo "[dear_me] Done."
}
trap cleanup EXIT INT TERM

# ── Flutter ──────────────────────────────────────────────────────────────────
cd "$PROJECT_ROOT"

echo ""
echo "[dear_me] ================================================"
echo "[dear_me]  Flutter: r = hot-reload, R = hot-restart, q = quit"
echo "[dear_me]"
echo "[dear_me]  http://localhost:3000  — App"
echo "[dear_me]"
echo "[dear_me]  Log: $FRONTEND_LOG"
echo "[dear_me] ================================================"
echo ""

flutter run -d web-server --web-port=3000 --web-hostname=0.0.0.0 2>&1 | tee "$FRONTEND_LOG"

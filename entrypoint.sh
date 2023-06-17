#!/usr/bin/env bash
set -e

if [[ -n "$FRONTEND_URL" ]]; then
    LEON_HOST="$FRONTEND_URL"
fi
if [[ -n "$LANGUAGE" ]]; then
    LEON_LANG="$LANGUAGE"
fi
if [[ -n "$TELEMETRY" ]]; then
    LEON_TELEMETRY="$TELEMETRY"
fi

export LEON_HOST LEON_LANG LEON_PORT LEON_TELEMETRY

if [[ "$*" == "leon start" ]]; then
    exec "$@" --port "$PORT"
else
    exec "$@"
fi

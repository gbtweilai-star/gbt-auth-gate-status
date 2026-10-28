#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_auth_gate_status info
PYTHONPATH=src python -m gbt_auth_gate_status check --payload '{}'
PYTHONPATH=src python -m gbt_auth_gate_status run   --payload '{}'

#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${HOME}/.codex/skills/cinematic-ai-lighting"

mkdir -p "${HOME}/.codex/skills"
rm -rf "${TARGET_DIR}"
cp -R "${ROOT_DIR}/cinematic-ai-lighting" "${TARGET_DIR}"

echo "Installed cinematic-ai-lighting to ${TARGET_DIR}"
echo "Restart Codex, then use: 使用 cinematic-ai-lighting skill，帮我写电影感补光提示词。"

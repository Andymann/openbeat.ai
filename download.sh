#!/usr/bin/env bash

set -euo pipefail

# API_URL="https://openbeat.ai/api/tracks/public?page=1&limit=400000"
OUT_DIR="wavs"

# mkdir -p "$OUT_DIR"

# echo "→ Lade JSON von API..."
# curl -s "$API_URL" -o tracks.json

# echo "→ Extrahiere audioUrlWav Links..."
# jq -r '.. | .audioUrl? // empty' tracks.json > wav_urls.txt

TOTAL=$(wc -l < wav_urls.txt)
echo "→ Gefundene WAV-Dateien: $TOTAL"

COUNT=0

while IFS= read -r url; do
    COUNT=$((COUNT + 1))
    FILENAME=$(basename "$url")

    echo "[$COUNT/$TOTAL] Lade: $FILENAME"

    curl -L --fail --retry 3 \
        --output "$OUT_DIR/$FILENAME.mp3" \
        "$url" || echo "❌ Fehler bei: $url"

done < wav_urls.txt

echo "✅ Fertig. Dateien gespeichert in: $OUT_DIR"

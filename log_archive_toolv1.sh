#!/bin/bash

# Check for argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR="$1"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_DIR="$HOME/archived_logs"
LOG_FILE="${ARCHIVE_DIR}/archive_log.txt"

# Verify the log directory
if [ ! -d "$LOG_DIR" ]; then
    echo "❌ Error: '$LOG_DIR' is not a valid directory."
    exit 1
fi

# Create archive directory if needed
mkdir -p "$ARCHIVE_DIR"

# Compress logs
tar -czf "${ARCHIVE_DIR}/${ARCHIVE_NAME}" -C "$(dirname "$LOG_DIR")" "$(basename "$LOG_DIR")"
echo "✅ Logs archived to ${ARCHIVE_DIR}/${ARCHIVE_NAME}"

# Record timestamp
echo "${TIMESTAMP} - Archived: ${ARCHIVE_NAME}" >> "$LOG_FILE"
echo "📝 Archive logged in: ${LOG_FILE}"

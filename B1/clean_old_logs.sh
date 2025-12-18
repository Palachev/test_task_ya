```bash
#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <log_directory> <days>"
  exit 1
fi

LOG_DIR="$1"
DAYS="$2"

if [ ! -d "$LOG_DIR" ]; then
  echo "Error: directory does not exist"
  exit 1
fi

if ! [[ "$DAYS" =~ ^[0-9]+$ ]]; then
  echo "Error: days must be a number"
  exit 1
fi

FILES=$(find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS")

if [ -z "$FILES" ]; then
  echo "No log files older than $DAYS days found"
  exit 0
fi

echo "The following files will be deleted:"
echo "$FILES"

read -p "Delete these files? (y/n): " ANSWER

if [[ "$ANSWER" == "y" || "$ANSWER" == "Y" ]]; then
  rm -f $FILES
  echo "Files deleted"
else
  echo "Operation cancelled"
fi
```

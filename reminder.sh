#!/bin/bash
# reminder.sh - Simple reminder script

if [ $# -lt 2 ]; then
    echo "Usage: $0 <time> <message>"
    echo "Example: $0 10m 'Take a break!'"
    exit 1
fi

TIME=$1
MESSAGE=$2

# Convert time (supports m = minutes, h = hours, s = seconds)
if [[ $TIME =~ ^[0-9]+m$ ]]; then
    SECONDS=$(( ${TIME%m} * 60 ))
elif [[ $TIME =~ ^[0-9]+h$ ]]; then
    SECONDS=$(( ${TIME%h} * 3600 ))
elif [[ $TIME =~ ^[0-9]+s$ ]]; then
    SECONDS=${TIME%s}
else
    echo "❌ Invalid time format. Use Ns, Nm, or Nh (e.g., 10m, 30s, 1h)."
    exit 1
fi

echo "⏳ Reminder set for $TIME → $MESSAGE"
sleep $SECONDS

# Show notification (Linux notify-send)
if command -v notify-send >/dev/null 2>&1; then
    notify-send "⏰ Reminder" "$MESSAGE"
fi

# Print in terminal
echo "⏰ Reminder: $MESSAGE"


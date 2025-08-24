#!/bin/bash
# screenshot-organizer.sh - Organize and rename screenshots by date

# Change this to your screenshot folder (default: ~/Pictures or ~/Downloads)
SOURCE_DIR="$HOME/Pictures"
DEST_DIR="$HOME/Screenshots"

# Create destination folder if not exists
mkdir -p "$DEST_DIR"

# Find PNG files (screenshots) in SOURCE_DIR
for file in "$SOURCE_DIR"/*.png; do
    [ -e "$file" ] || continue

    # Extract date
    DATE=$(date +"%Y-%m-%d")
    TIME=$(date +"%H-%M-%S")

    # Create dated folder
    mkdir -p "$DEST_DIR/$DATE"

    # Rename file with timestamp
    NEW_NAME="screenshot_${TIME}.png"

    # Move and rename
    mv "$file" "$DEST_DIR/$DATE/$NEW_NAME"
    echo "Moved: $file → $DEST_DIR/$DATE/$NEW_NAME"
done

echo "✅ Screenshots organized!"


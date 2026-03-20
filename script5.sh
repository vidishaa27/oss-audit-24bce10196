#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Vidis

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"
echo ""

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get system info
USER_NAME=$(whoami)
DATE=$(date '+%d %B %Y')

# Output file
OUTPUT="manifesto_$USER_NAME.txt"

# Generate manifesto
echo "--------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "By $USER_NAME on $DATE" >> $OUTPUT
echo "--------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in the power of open-source software." >> $OUTPUT
echo "Using tools like $TOOL, I experience the true meaning of $FREEDOM." >> $OUTPUT
echo "I aspire to build $BUILD and share it freely with the world." >> $OUTPUT
echo "Knowledge should be open, collaborative, and accessible to everyone." >> $OUTPUT
echo "" >> $OUTPUT
echo "This is my contribution to the open-source community." >> $OUTPUT

# Display result
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT

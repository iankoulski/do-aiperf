#!/bin/sh

# Container startup script
echo "Container-Root/startup.sh executed"

source venv/bin/activate

while true; do date; sleep 10; done


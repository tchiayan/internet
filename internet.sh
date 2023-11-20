#!/bin/bash

# Set the number of consecutive failures required to trigger a restart
CONSECUTIVE_FAILURES_THRESHOLD=5

consecutive_failures=0

while true; do
    if ping -c 1 google.com &> /dev/null; then
        echo "Internet is reachable."
        consecutive_failures=0
    else
        echo "Internet is not reachable."
        ((consecutive_failures++))

        if [ $consecutive_failures -ge $CONSECUTIVE_FAILURES_THRESHOLD ]; then
            echo "Restarting Network Manager..."
            systemctl restart NetworkManager
            consecutive_failures=0
        fi
    fi

    sleep 60  # Sleep for 1 minute before the next iteration
done
#!/bin/bash

# Path to the Python script
SCRIPT_PATH="sensor_to_mongo.py"

# Log file for the process output
LOG_FILE="sensor_to_mongo.log"

# Log file for the process ID
PID_FILE="sensor_to_mongo.pid"

# Run the Python script in the background, redirect output to log file, and save the process ID
python3 $SCRIPT_PATH > $LOG_FILE 2>&1 &

# Save the process ID to a file
echo $! > $PID_FILE

echo "sensor_to_mongo.py is running in the background with PID $(cat $PID_FILE)"
echo "Logs are being written to $LOG_FILE"

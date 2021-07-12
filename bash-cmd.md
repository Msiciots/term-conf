# Record of useful bash command
- Delete process by keyword  
    `ps -aux | grep realtime-monitor | awk '{print $2}' | xargs kill -9`

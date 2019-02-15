[Unit]
Description=alarm logger service
Documentation=https://github.com/shroffk/phoebus/tree/master/services/alarm-logger
Wants=network-online.target elastic.service
After=network-online.target

[Service]
User=train
Group=train

ExecStart=/home/train/epics-tools/setup/startup/start_alarm_logger_server.sh

# Connects standard output to /dev/null
StandardOutput=null

# Connects standard error to journal
StandardError=journal

# When a JVM receives a SIGTERM signal it exits with code 143
SuccessExitStatus=143

# Specifies the maximum file descriptor number that can be opened by this process
LimitNOFILE=65535

# Shutdown delay in seconds, before process is tried to be killed with KILL (if configured)
TimeoutStopSec=20

[Install]
WantedBy=multi-user.target

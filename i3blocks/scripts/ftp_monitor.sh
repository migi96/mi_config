#!/bin/bash

# Count the number of FTP connections
ftp_connections=$(ss -tanp | grep ':21 ' | wc -l)

# Get the FTP transfer speed
ftp_speed=$(sar -n DEV 1 1 | grep ftp | awk '{print $5 " MB/s"}')

# Output the result
echo "$ftp_connections ftpc $ftp_speed"


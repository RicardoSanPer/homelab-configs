#!/bin/bash
set -e

DATE=$(date +%Y-%m-%d)

rclone sync onedrive: /mnt/storage/onedrive --progress --filter-from=/usr/local/bin/rclone-exclude.txt --backup-dir /mnt/storage/onedrive-backups/$DATE --config="/home/ricardo/.config/rclone/rclone.conf"

#rclone-exclude.txt:
#- Almacén personal/**
#- Personal vault/**


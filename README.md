# Homelab Config
This repository serves as a documentation repository of my homelab, including some configuration files.

## Specs
- 24GB RAM
- Intel i7 6th generation
- Storage:
  - 512GB SSD: Boot partition and Linux installation
  - 1TB SSD: User data
  - 2.7TB external drive: Multimedia, backups
- Ubuntu 24.04 LTS

## Services
| Service | Port |
| --- | --- |
| SSH | 22 |
| Nginx | 80 |
| SMB | 139, 445 |
| qbitTorrent | 8080 |
| Bookstack | 9000 |
| Jellyfin | 8096 |
| Jellyseerr | 5055 |
| Radarr | 7878 |
| Sonarr | 8989 |
| Bazarr | 6767 |
| Prowlarr | 9696 |
| Shoko | 8111 |
| ITTools | 8085 |
| Cyberchef | 8084 |
| Omnitools | 8083 |
| MeTube | 8086 |
| Kanboard | 8081 |
| FreshRSS | 8082 |
| Anki Sync | 9090 |
| Anki Admin | 9091 |
| Anki Metrics | 9092 |
| Adguard Admin | 3080 |
| Gitea |   3000   |
| Cockpit |   7777   |
| KVM | 5901 |

Additionally Rclone creates a local backup copy of files stored in the cloud.

## Hardening
- Most services are running as Docker containers in docker networks, listening only on localhost.
- Most services are accessible through the Nginx proxy.
- Firewall rules (UFW) restrict access to most of the services outside the proxy.

## Files
| File | Purpose | Location |
| ---- | --- | --- |
| docker-compose.yml | Compose files for the services | ~ (User home directory) |
| homelab-nginx.conf | Configuration for the reverse proxy | /etc/nginx/conf.d/ |
| user.rules | UFW user rules | /etc/ufw/ |
| user6.rules | UFW user rules (IPv6) | /etc/ufw/ |
| onedrive-sync.timer | Systemd timer for the backup service | /etc/systemd/ |
| onedrive-sync.service | Systemd service for the backup | /etc/systemd/ |
| onedrive-sync.sh | Script executed by the backup service | /usr/local/bin/ |

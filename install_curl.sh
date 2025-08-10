#!/bin/bash
rm -rf /tmp/zalo_curl
mkdir /tmp/zalo_curl
git clone https://github.com/NanKillBro/zalo-linux-unofficial-2025 /tmp/zalo_curl
cd /tmp/zalo_curl
chmod +x install.sh
./install.sh

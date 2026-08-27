#!/bin/bash
# UPDATE SCRIPT - SHIMUL AHMED
# Refreshes core service files/configs from Shimul's own GitHub repos and restarts services.

clear
Green="\e[92;1m"
YELLOW="\033[33m"
FONT="\033[0m"
OK="${Green}--->${FONT}"

echo -e "${YELLOW}----------------------------------------------------------${FONT}"
echo -e " ${Green}UPDATE SCRIPT - SHIMUL AHMED${FONT}"
echo -e "${YELLOW}----------------------------------------------------------${FONT}"
echo ""

# === Repos (all under Shimul's own GitHub account) ===
REPO="https://raw.githubusercontent.com/Hackershimul07/vps-script/main/"
REPOO="https://raw.githubusercontent.com/Hackershimul07/backup/main/"
REPOS="https://raw.githubusercontent.com/Hackershimul07/license/main/"
REPOCOK="https://raw.githubusercontent.com/Hackershimul07/babi/main/"
REPOSE="https://raw.githubusercontent.com/Hackershimul07/apem/main/"

domain=$(cat /etc/xray/domain 2>/dev/null)

echo -e "${OK} Updating Xray config"
wget -q -O /etc/xray/config.json "${REPOO}backup/config.json"
wget -q -O /etc/systemd/system/runn.service "${REPOO}backup/runn.service"

echo -e "${OK} Updating HAProxy config"
wget -q -O /etc/haproxy/haproxy.cfg "${REPOCOK}tempek/kontol/haproxy.cfg"
[[ -n "$domain" ]] && sed -i "s/xxx/${domain}/g" /etc/haproxy/haproxy.cfg

echo -e "${OK} Updating Nginx config"
wget -q -O /etc/nginx/conf.d/xray.conf "${REPOS}lc/komtol/xray.conf"
wget -q -O /etc/nginx/nginx.conf "${REPOS}lc/komtol/nginx.conf"
[[ -n "$domain" ]] && sed -i "s/xxx/${domain}/g" /etc/nginx/conf.d/xray.conf

echo -e "${OK} Updating WebSocket (ws.py) - Shimul's own version"
mkdir -p /etc/whoiamluna
wget -q -O /etc/whoiamluna/ws.py "${REPOSE}murah/ws.py"
chmod +x /etc/whoiamluna/ws.py

cat > /etc/systemd/system/ws.service << END
[Unit]
Description=Websocket
Documentation=https://t.me/shimul00889
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python3 -O /etc/whoiamluna/ws.py 10015
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

cat > /etc/systemd/system/ws-ovpn.service << END
[Unit]
Description=OpenVPN
Documentation=https://t.me/shimul00889
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python3 -O /etc/whoiamluna/ws.py 10012
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

echo -e "${OK} Updating Menu panel"
wget -q -O /root/menu.zip "${REPO}files/menu.zip"
if [[ -f /root/menu.zip ]]; then
    rm -rf /root/menu_extract
    mkdir -p /root/menu_extract
    unzip -o -q /root/menu.zip -d /root/menu_extract
    # Handle both flat zips and zips with a nested top-level folder
    src_dir="/root/menu_extract"
    if [[ $(find /root/menu_extract -mindepth 1 -maxdepth 1 -type d | wc -l) -eq 1 && $(find /root/menu_extract -mindepth 1 -maxdepth 1 -type f | wc -l) -eq 0 ]]; then
        src_dir=$(find /root/menu_extract -mindepth 1 -maxdepth 1 -type d)
    fi
    find "$src_dir" -mindepth 1 -maxdepth 1 -type f -exec chmod +x {} \;
    find "$src_dir" -mindepth 1 -maxdepth 1 -type f -exec mv -f {} /usr/local/sbin/ \;
    rm -rf /root/menu_extract /root/menu.zip
fi

echo -e "${OK} Reloading and restarting services"
systemctl daemon-reload
systemctl enable --now ws.service ws-ovpn.service >/dev/null 2>&1
systemctl restart ws.service
systemctl restart ws-ovpn.service
systemctl restart xray
systemctl restart nginx
systemctl restart haproxy

echo ""
echo -e "${Green}Update complete. All services refreshed and restarted.${FONT}"
echo ""

rm -f "$0"

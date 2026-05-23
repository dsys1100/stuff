#!/bin/sh

sudo tee /usr/bin/myip > /dev/null <<'EOF'
#!/bin/sh

LOCAL_IP=$(
    if command -v ip >/dev/null 2>&1; then
        ip route get 1 2>/dev/null | awk '{print $7; exit}'
    elif command -v ifconfig >/dev/null 2>&1; then
        ifconfig | awk '/inet / && $2 != "127.0.0.1" {print $2; exit}'
    else
        hostname -I 2>/dev/null | awk '{print $1}'
    fi
)

PUBLIC_IP=$(
    if command -v wget >/dev/null 2>&1; then
        wget -qO- ifconfig.co
    elif command -v curl >/dev/null 2>&1; then
        curl -s ifconfig.co
    fi
)

echo "Local ip: ${LOCAL_IP:-unknown}"
echo "Public ip: ${PUBLIC_IP:-unknown}"
EOF

sudo chmod +x /usr/bin/myip
echo " "
echo " "
echo "All done!"

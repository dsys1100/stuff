#!/bin/sh

sudo tee /usr/bin/myip > /dev/null <<'EOF'
#!/bin/sh
echo "Local ip: $(hostname -I | awk '{print $1}')"
echo "Public ip: $(if command -v wget >/dev/null 2>&1; then wget -qO- ifconfig.co; elif command -v curl >/dev/null 2>&1; then curl -s ifconfig.co; fi)"
EOF

sudo chmod +x /usr/bin/myip
echo " "
echo " "
echo "All done!"

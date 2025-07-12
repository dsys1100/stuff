#!/bin/sh

sudo tee /usr/bin/myip > /dev/null <<'EOF'
#!/bin/sh
echo "Local ip:" && hostname -I | awk '{print $1}'
echo "Public ip:" && curl -s ifconfig.co
EOF

sudo chmod +x /usr/bin/myip
echo " "
echo " "
echo "All done!"

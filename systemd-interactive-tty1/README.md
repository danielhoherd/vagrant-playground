# Demo of starting a persistent interactive process on tty1 at boot

This demo needs to reboot in order to work, so you must `vagrant plugin install vagrant-reload`

```
apt-get install -y screen

cat > /etc/systemd/system/tty1.service << EOF
[Unit]
Description=tty1_test
After=sysinit.target

[Service]
StandardInput=tty
StandardOutput=tty
Restart=always
RestartSec=1
ExecStart=/usr/bin/screen -S tty1_test /root/tty1.sh

[Install]
WantedBy=multi-user.target
EOF

cat > /root/tty1.sh << EOF
#!/usr/bin/env bash
while true ; do
  sleep 1
  echo -n .
done
EOF

chmod +x /root/tty1.sh
systemctl disable getty@tty1.service
systemctl enable tty1
```

# See Also

- <http://0pointer.de/blog/projects/serial-console.html>
- <http://superuser.com/a/642006>

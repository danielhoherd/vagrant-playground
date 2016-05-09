Trying to discover a way to replicate starting a process running in GNU screen from /etc/rc.local

- http://0pointer.de/blog/projects/serial-console.html
- http://superuser.com/a/642006

```
cat > /etc/systemd/system/tty1.service << EOF
[Unit]
Description=tty1_test
After=sysinit.target

[Service]
Type=oneshot
StandardInput=tty
StandardOutput=tty
RemainAfterExit=yes
ExecStart=/usr/bin/screen -S HomePassScript /root/test.sh

[Install]
WantedBy=multi-user.target
EOF
systemctl disable getty@tty1.service
systemctl enable tty1
```

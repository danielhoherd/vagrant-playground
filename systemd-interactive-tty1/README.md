# Demo of starting a persistent interactive process on tty1 at boot

This demo shows how to start an interactive process on tty1 using systemd init. This is something that was possible using `/etc/rc.local` when using upstart and traditional sys-v init, but is a bit more complicated, and a bit more elegant, in systemd.

This demo needs to reboot in order to work, so you must `vagrant plugin install vagrant-reload`

# See Also

- <http://0pointer.de/blog/projects/serial-console.html>
- <http://superuser.com/a/642006> - The thread post where most of this logic was taken from.

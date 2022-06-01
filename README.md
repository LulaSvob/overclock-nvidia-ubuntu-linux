# overclock-nvidia-ubuntu-linux
Overclock NVIDIA Cards on Ubuntu and Linux based non-mining OS

If those do not work for your (newer) version of Linux/Drivers, please consider the following:

If Xorg is not running in root mode try this:

1. `sudo vi /etc/gdm3/custom.conf`
2. Uncomment the "WaylandEnable" line and make sure it says "WaylandEnable=false"
3. `sudo vi /etc/X11/Xwrapper.config`
4. Add "needs_root_rights = yes" to the end of the file
5. Reboot

See the following for more info:

* https://wiki.archlinux.org/title/NVIDIA/Troubleshooting#Overclocking_not_working_with_Unknown_Error
* https://wiki.archlinux.org/title/Xorg#Rootless_Xorg

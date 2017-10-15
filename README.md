# Pulgovisk overlay

This repository contain some ebuilds and patches for Gentoo based systems.
Most of packages are patched to work with [musl](https://www.musl-libc.org/) libc

# How to enable the overlay?
1. Install [layman](https://packages.gentoo.org/packages/app-portage/layman)
2. Run the follow command as root:
```
layman -f -o https://raw.githubusercontent.com/Pulgovisk/pulgovisk-overlay/master/pulgovisk-overlay.xml -a pulgovisk-overlay
```

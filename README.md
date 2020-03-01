# Ubuntu 18 LTS minimal
Packer template for a bare, lightweight Ubuntu 18 LTS (VirtualBox). Installed from the netinstall image.

## Components
* packer template
* shell provisioning scripts

## Notes
* used VirtualBox 6.1.4
* replaces the kernel-bundled additions with the latest one
* disk space used in OS: ~1.8GB
* the latest Ubuntu 19.10 Eoan mini installer gives me the bug 
[#1817358](https://bugs.launchpad.net/ubuntu/+source/debian-installer/+bug/1817358

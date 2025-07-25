# Docker Java Applets (Legacy Access)

A lightweight Docker container with XFCE, VNC, Firefox 52 ESR, and Java plugin support for running legacy Java applets.

This project makes it easy to access old-school Java-based tools like **IPMI**, **iDRAC**, and other remote KVM consoles. It runs an Ubuntu 18.04 desktop with Firefox 52 ESR (the last version to support NPAPI plugins) and Java 8, all inside a VNC-accessible container — so you don’t have to mess with your host setup.

## Screenshot

![Legacy Java Applet in Firefox 52 ESR](screenshot.png)

## Quick Start

You can get up and running with just a few commands:

```bash
git clone https://github.com/heroseloi/docker-java-apples.git
cd docker-java-apples
chmod +x run.sh
./run.sh
```

Then connect to the desktop using your VNC client:

```bash
localhost:5901
```

**Password: docker**

## Features
- Ubuntu 18.04 base  
- XFCE lightweight desktop  
- VNC server for remote GUI access  
- Firefox 52 ESR with NPAPI support  
- Java 8 with browser plugin (`libnpjp2.so`)  
- Custom desktop shortcut for easy access

## Notes
- Designed mainly for legacy tools like KVM/IPMI/iDRAC consoles that still use Java applets.
- Uses Firefox 52 ESR – the last version with full Java NPAPI plugin support.
- Tested on macOS with Docker Desktop and RealVNC client.

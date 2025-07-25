# docker-java-apples

A lightweight Docker container with XFCE, VNC, Firefox 52 ESR, and Java plugin support for running legacy Java applets.

This project makes it easy to access old-school Java-based tools like IPMI, iDRAC, and other remote KVM consoles. It runs an Ubuntu 18.04 desktop with Firefox 52 ESR (the last version to support NPAPI plugins) and Java 8, all inside a VNC-accessible container—so you don’t have to mess with your host setup.


Dependencies:

You must have docker installed at your end.

It was built using Docker Desktop 4.40.0 (187762) for Mac.

How to use:

# git clone https://github.com/heroseloi/docker-java-apples.git
# cd docker-java-apples.git
# chmod +x run.sh
# ./run.sh

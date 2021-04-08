# Mobile Networks: Setting up ns2 and nam with Docker

This repository contains instructions on how to work with ns2 (network simulator) and its graphical user interface nam using docker containers.

## Installation

### 1. Make sure you have [docker](https://www.docker.com/products/docker-desktop) set up

### 2. Build the docker image using the Dockerfile in this repo

    docker build . -t ignema/ns2

Choose any name you want for your image.

### 3. (For Windows Only) Set up an X11 Session to run GUI apps with Docker

#### 1st way (using [chocolatey](https://chocolatey.org/install))

    choco install vcxsrv

#### 2nd way

Download it directly from the [sourceforge](https://sourceforge.net/projects/vcxsrv/) website.

### **Important:** Make sure you start XLaunch.exe that we just downloaded and keep it running in the background.

![XLaunch](https://raw.githubusercontent.com/Ignema/ns2-nam-docker/main/img/xlaunch.png)

Make sure you check *Disable Access Control* !

### 4. Look up your private IP address

#### Windows

    C:\> ipconfig

![ipconfig](https://raw.githubusercontent.com/Ignema/ns2-nam-docker/main/img/ipconfig.png)

#### Linux

    # sudo apt-get install net-tools
    #
    # ifconfig

![ifconfig](https://raw.githubusercontent.com/Ignema/ns2-nam-docker/main/img/ifconfig.png)

### 5. Run the docker container from the image we built

    docker run -it --rm -e DISPLAY=<YOUR-IP-ADDRESS>:0.0 ignema/ns2

## Enjoy!

![nam](https://raw.githubusercontent.com/Ignema/ns2-nam-docker/main/img/nam.png)
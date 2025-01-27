#!/bin/bash
sudo rm -rf /etc/apt/sources.list.d
sudo apt-get update
sudo apt-get -y --no-install-recommends install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs gcc-multilib g++-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler
curl https://raw.githubusercontent.com/friendlyarm/build-env-on-ubuntu-bionic/852acb5b6511d31a450fd0a8829a0f795b3f21fd/install.sh  | sed '/#/d' | sed 's/\\//g' | sed 's/exit 0//g' | sed 's/sudo apt -y install//g' | sed 's/sudo apt-get -y install//g' | sed 's/:i386//g' | xargs sudo apt-get -y --no-install-recommends install
sudo rm -rf /usr/share/dotnet /usr/local/lib/android/sdk
sudo docker image prune -a -f

git clone https://github.com/friendlyarm/repo
sudo cp repo/repo /usr/bin/

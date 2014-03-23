# Softcover Vagrant Box

##Status

Box should work on all systems. Windows users should use the Vagrantfile in `./win`. OXS/Linux users should use the `./nix` folder.

Some lingering errors when building books, but softcover installs completely. Biggest issue seems to be with epub generation.

--------------------------------------
##Overview

This is a self-contained working vagrant box for the [softcover](http://softcover.io) platform.

After much trouble with dependencies and incompatibilities, this simple arch box seems to be most effective.

The box should automatically download, but can be downloaded separately here (faster):
[https://sourceforge.net/projects/softcover-vagrant/files/arch64-base.box/download](https://sourceforge.net/projects/softcover-vagrant/files/arch64-base.box/download)

##Setup

** Non-windows users will need to comment out a section in the Vagrantfile.**

###Basic
```
git clone https://github.com/jhpaul/softcover-vagrant.git
cd softcover-vagrant
vagrant up
```
###Manual Download

```
wget -O arch64-base.box https://sourceforge.net/projects/softcover-vagrant/files/arch64-base.box/download
vagrant add arch64-base arch64-base.box
git clone https://github.com/jhpaul/softcover-vagrant.git
vagrant up
```


# Softcover Vagrant Box

This is a self-contained working vagrant box for the [softcover](http://softcover.io) platform.

After much trouble with dependencies and incompatibilities, this simple arch box seems to be most effective.

The box should automatically download, but you can also download it separately here:
[http://downloads.sourceforge.net/project/softcover-vagrant/softcover-vagrant-arch64.box](http://downloads.sourceforge.net/project/softcover-vagrant/softcover-vagrant-arch64.box)

##Setup

###Basic
```
git clone https://github.com/jhpaul/softcover-vagrant.git
cd softcover-vagrant
vagrant up
```
###Manual Download

```
wget wget -O softcover-vagrant-arch64.box http://sourceforge.net/projects/softcover-vagrant/files/softcover-vagrant-arch64.box/download
vagrant add softcover-vagrant-arch64 softcover-vagrant-arch64.box
vagrant init softcover-vagrant-arch64
vagrant up
```


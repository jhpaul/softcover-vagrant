#!/bin/bash

#Install Build Dependencies 
echo "Installing Build Dependencies..."
# { 
pacman -Sy
pacman -S base-devel fakeroot jshon expac git --noconfirm
wget https://aur.archlinux.org/packages/pa/packer/PKGBUILD
sudo -u vagrant makepkg
pacman -U packer*tar* --noconfirm
pacman -S wget python2 ruby libxml2 libxslt --noconfirm
ln -fs /usr/bin/python2 /usr/bin/python
export PATH=$PATH:/home/vagrant/.gem/ruby/2.1.0/bin
sudo -u vagrant echo export PATH=$PATH:/home/vagrant/.gem/ruby/2.1.0/bin >> /home/vagrant/.bashrc
umount -f /tmp
systemctl mask tmp.mount
dd if=/dev/zero of=/var/512mb.swap bs=1M count=512
mkswap /var/512mb.swap
swapon /var/512mb.swap

#} &> ~/provision.log
# Build Softcover
echo "Installing softcover..."
sudo -u vagrant gem install softcover
sudo -u vagrant sc check
sudo -u vagrant gem install bundler
echo "Installing softcover Dependencies..."
# Satisfy Check
pacman -S texlive-most imagemagick nodejs phantomjs calibre inkscape zip unzip --noconfirm
packer -S jdk --noconfirm
export PATH=$PATH:/opt/java/bin/
sudo -u vagrant echo export PATH=$PATH:/opt/java/bin/ >> /home/vagrant/.bashrc
wget -c -O kindlegen.tar.gz http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz
tar xvf kindlegen.tar.gz
rm -f /usr/bin/kindlegen
mv kindlegen /usr/bin/
wget -c -O epubcheck-3.0.zip https://github.com/IDPF/epubcheck/releases/download/v3.0/epubcheck-3.0.zip
unzip epubcheck-3.0.zip
rm -rf ~/epubcheck-3.0
mv -f epubcheck-3.0 ~/
sudo -u vagrant sc check
#echo "Configure Windows Shared Folder"
##Configure samba
#pacman -S samba --noconfirm
## mkdir /vagrant/vagrant
#mkdir /share
#chmod a+rwx /share
#rm /etc/samba/smb.conf
#cp /vagrant/smb.conf /etc/samba/smb.conf
#systemctl enable smbd nmbd
#systemctl restart smbd nmbd


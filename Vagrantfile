# -*- mode: ruby -*-
# vi: set ft=ruby :

box = 'arch64-base'
ram = '1024'
hostname = 'softcover-vagrant'
url = 'http://downloads.sourceforge.net/project/softcover-vagrant/arch64-base.box'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

 
  config.vm.network "forwarded_port", guest: 4000, host: 4000
  config.vm.box = box
  config.vm.hostname = hostname
  config.vm.box_url = url

  #Windows - Comment out for other systems
  # TODO: Add logic for 
      config.vm.network "public_network"
      config.trigger.after [:up,:reload, :resume], { :execute => "share.bat"}
      config.trigger.before [:halt, :reload, :destroy, :suspend], { :execute => "share-del.bat"}
      $ipaddr = "sleep 10 
               ip address | grep 'eth1' | grep inet | awk '{print $2}' |sed 's@\/24@@g' > /vagrant/ipaddr"
      config.vm.provision "shell", inline: $ipaddr

  config.vm.provider "virtualbox" do |v|
    v.customize [
      'modifyvm', :id,
 #     '--name', hostname,
      '--memory', ram
    ]
  end

  config.vm.provision "shell", path: "provision.sh"


end

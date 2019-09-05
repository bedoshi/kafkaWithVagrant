Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.provision :shell, :path => "provisioning_init.sh"
    config.name = "myTempBox"
end
Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.provision :shell, :path => "provisioning_init.sh"

    config.vm.provider :virtualbox do |vbox|
        vbox.name = "myTempBox"
        vbox.cpus = 2 # 2cpu using
        vbox.memory = 2048 # 2048MB memory using
        vbox.customize ["modifyvm", :id, "--ioapic", "on"] # Enabling I/O APIC
    end

    ## 9092 is my kafka-port
    config.vm.network :forwarded_port, host: 9092, guest: 9092
end
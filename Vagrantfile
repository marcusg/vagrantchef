Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.boot_timeout = 120

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.name = "test_box"
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.ssh.forward_agent = true

  # NOTE: adjust path to public ssh key file!
  config.vm.provision "shell", inline: "echo '#{`cat ~/.ssh/id_rsa.pub`}' >> /home/vagrant/.ssh/authorized_keys"

  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.33.10"
end

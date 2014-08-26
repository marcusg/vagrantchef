Vagrant.configure("2") do |config|
  config.vm.box = "https://vagrantcloud.com/ubuntu/trusty64/version/1/provider/virtualbox.box"
  config.vm.boot_timeout = 120

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.name = "base_box"
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.omnibus.chef_version = :latest

  config.ssh.insert_key = true
  config.ssh.forward_agent = true
  config.librarian_chef.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["site-cookbooks", "cookbooks"]
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    chef.run_list = "role[base]" # NOTE: initialize vm with basic run list
  end

  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.33.10"
end

# add deploy user out of data_bag
node.default['users'] = ["deploy"]
include_recipe "user::data_bag"

# set ssh keys - root user ssh key from deploy user out of data_bag
node.default['ssh_keys'] = { root: ["deploy"] }
include_recipe "ssh-keys::default"

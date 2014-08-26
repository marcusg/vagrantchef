node.default['rvm']['user_installs'] = [
  { 'user'          => 'deploy',
    'default_ruby'  => 'ruby-2.1.2',
    'rubies'        => ['2.1.2']
  }
]
node.default['rvm']["rvmrc"] = {
  "rvm_autolibs_flag" => "disabled"
}

include_recipe "rvm::user"
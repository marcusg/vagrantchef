name "base"
description "Basic configuration for all systems"

default_attributes(
  {

    "ssh_keys" => {
      "root" => "deploy"
    },

    'users' => ["deploy"],

    'rvm' => {
      'user_installs' => [
        {
          'user' => 'deploy',
          'rubies' => ['ruby-2.1.2'],
          'default_ruby' => "ruby-2.1.2"
        }
      ],
      "rvmrc" => {
        "rvm_autolibs_flag" => "disabled" # needed to work with vagrant -.-
      }
    }
  }
)

run_list(
  "recipe[ssh-keys]",       # copy ssh key to root user
  "recipe[apt]",            # refresh apt lists
  "recipe[user::data_bag]", # create deploy user and copy ssh key
  "recipe[rvm::user]"       # install rvm for deploy user
)

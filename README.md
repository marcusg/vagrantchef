vagrantchef
===========

repo to test vagrant with chef

### Required tools on host system
- virtualbox 4.x
- bsdtar (on newer virtualbox versions)

### Config

- Adjust path to ssh public key file in `Vagrantfile` (needed for first setup)
- Copy ssh public key to `data_bags/users/deploy.json` to ensure passwordless access to server

### Build box

    bundle install
    vagrant up

### Prepare box and run recipes

    bundle exec knife solo prepare vagrant@192.168.33.10
    bundle exec knife solo cook vagrant@192.168.33.10 nodes/base.json

### Tests

Run tests against vagrant instance (run `prepare` and `cook` commands before)

		rspec

### Disable Host key verification

put in `~/.ssh/config`

    Host 192.168.33.*
      StrictHostKeyChecking no
      UserKnownHostsFile=/dev/null


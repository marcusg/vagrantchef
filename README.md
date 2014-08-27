vagrantchef
===========

repo to test vagrant with chef

## Needed tools on host system
- virtualbox
- bsdtar (on newer virtualbox versions)

## Build box

    bundle install
    vagrant up

## Prepare box

    bundle exec knife solo prepare vagrant@192.168.33.10

## Run recipes

    bundle exec knife solo cook vagrant@192.168.33.10 nodes/base.json

## Disable Host key verification

put in `~/.ssh/config`

    Host 192.168.33.*
      StrictHostKeyChecking no
      UserKnownHostsFile=/dev/null
vagrantchef
===========

repo to test vagrant with chef

## Needed tools on host system
- virtualbox
- bsdtar (on newer virtualbox versions)

## Start

    bundle install
    bundle exec librarian-chef install

    vagrant plugin install vagrant-librarian-chef
		vagrant plugin install vagrant-omnibus
    vagrant up

## Changes

    bundle exec knife solo cook root@192.168.33.10 nodes/base.json
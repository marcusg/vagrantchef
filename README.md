vagrantchef
===========

repo to test vagrant with chef

## Needed tools on host system
- virtualbox
- bsdtar (on newer virtualbox versions)

## Start

    bundle install
    librarian-chef install
    vagrant up

## Changes

    knife solo cook root@192.168.33.10 nodes/base.json
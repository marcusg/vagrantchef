# dependency when installing nginx as deb
include_recipe "apt::default"

# enabled nginx default page (hello world)
node.default['nginx']['default_site_enabled'] = true
node.default['nginx']['user'] = 'deploy'

include_recipe "nginx::default"

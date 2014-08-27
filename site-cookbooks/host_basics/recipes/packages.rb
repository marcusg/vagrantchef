# refresh packages
include_recipe "apt::default"

# install some useful packages
package "htop"
package "nload"

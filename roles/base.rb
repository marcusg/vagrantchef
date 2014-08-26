name "base"
description "Basic configuration for all systems"

run_list(
  "recipe[host_basics::packages]",
  "recipe[host_basics::configuration]",
  "recipe[host_basics::ruby]"
  # "recipe[host_basics::nginx]"
)
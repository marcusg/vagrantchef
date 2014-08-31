name "base"
description "Basic configuration for all systems"

run_list(
  "recipe[host_base::packages]",
  "recipe[host_base::configuration]",
  "recipe[host_base::ruby]",
  "recipe[host_web::nginx]"
)

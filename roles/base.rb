name "base"
description "Basic configuration for all systems"

default_attributes(
  {
    users: ["deploy"]
  }
)

run_list(
  "recipe[user::data_bag]"
)

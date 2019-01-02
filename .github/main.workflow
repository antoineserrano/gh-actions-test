workflow "New workflow" {
  on = "push"
  resolves = ["new-action-1", "Docker Registry"]
}

action "Docker Registry" {
  uses = "actions/docker/login@76ff57a"
}

action "new-action-1" {
  uses = "owner/repo/path@ref"
  needs = ["Docker Registry"]
}

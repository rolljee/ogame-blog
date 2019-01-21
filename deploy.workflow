workflow "Deploy to Github Pages" {
  on = "push"
  resolves = ["Deploy to GH"]
}

action "Deploy to GH" {
  uses = "actions/npm@de7a3705a9510ee12702e124482fad6af249991b"
  runs = "npm run deploy"
}

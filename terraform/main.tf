resource "github_repository" "action_test_env" {
  name        = "testing-repo"
  description = "A repository to test Github Actions"

  visibility   = "public"
  has_issues   = false
  has_projects = false
  has_wiki     = false
  auto_init    = true
}

data "github_repository" "branch_deploy" {
  full_name = "suspicious-tesla/gha-branch-deploy"
}

output "repository_branch_deploy" {
  value = data.github_repository.branch_deploy
}
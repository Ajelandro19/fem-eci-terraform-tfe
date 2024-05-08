locals{
    project = {
        "fem-eci-project" = {
            description = "This is a test project"
        }
    }
    workspace = {
        "fem-eci-tfe" = {
            description = "This is a test workspace"
            execution_mode = "remote"
            project_id = module.project["fem-eci-project"].id
            vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-tfe"
        }
        "fem-eci-github" = {
            description = "Example automation workspace for GitHub resources"
            execution_mode = "local"
            project_id = module.project["fem-eci-project"].id
            vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-github"
        }
    }
}
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
            vcs_repo_identifier = "Ajelandro19/fem-eci-terraform-tfe"
        }
    }
}
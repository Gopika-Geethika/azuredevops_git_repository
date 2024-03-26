resource "azuredevops_project" "project" {
  name        = "cybersec"
  description = "Project Description"
}

resource "azuredevops_git_repository" "Cybersec" {
  project_id = azuredevops_project.project.id
  name       = "Cybersec Infra"
  initialization {
    init_type = "Import"
    source_type = "Git"
    source_url  = "https://github.com/Gopika-Geethika/azuredevops_git_repository.git"
  }
}

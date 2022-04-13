resource "google_cloudbuild_trigger" "cicd-sample-main" {
    project = var.project
    name = "cicd-sample-main"
  trigger_template {
    branch_name = "main"
    repo_name   = "cicd-sample"
    project_id = var.project
  }

  substitutions = {
    _FOO = "bar"
    _BAZ = "qux"
  }

  filename = "cloudbuild.yaml"
}
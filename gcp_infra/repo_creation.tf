resource "google_sourcerepo_repository" "cicd-sample" {
  name = "cicd-sample"
  project = var.project
  
}
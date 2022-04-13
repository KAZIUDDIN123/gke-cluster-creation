
variable "project" { }
variable "project_id" { }
variable "region" {}

variable "iam_roles" {
  description = "Roles that will be added to service account"
  type        = list(string)
  default     = ["roles/iam.serviceAccountUser", "roles/clouddeploy.operator","roles/container.admin"]
}
variable "repository_id" {
  description = "mane of the repo"
  type        = string
}
resource "google_service_account" "thrinadsandbox" {
  project = "thrinadsandbox-344414"
  account_id = "thrinadsandbox"
  display_name = "thrinadsandbox"
}
resource "google_project_iam_member" "gke_sa_roles" {
 for_each = toset(var.iam_roles)
 project = "thrinadsandbox-344414"
 role    = each.value
 member  = "serviceAccount:${google_service_account.thrinadsandbox.email}"

}
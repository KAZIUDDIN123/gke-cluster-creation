resource "google_compute_network" "vpc_network" {
  project                 = var.project
  name                    = "for-gke-use"
  auto_create_subnetworks = false
  mtu                     = 1460
}
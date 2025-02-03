resource "google_compute_network" "vpc_network" {
  name = var.vpc-name
  project = var.project
  auto_create_subnetworks = "false"
  region = var.region
}
resource "google_compute_subnetwork" "vpc_subnet" {
  name = var.subnet-name
  network = google_compute_network.vpc_network.id
  ip_cidr_range = variable.ip-cidr-range
  region = var.region
}
resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false  # Disable auto subnets as we'll define them manually

  routing_mode = "REGIONAL"

  project = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  count                  = length(var.subnet_names)
  name                   = var.subnet_names[count.index]
  ip_cidr_range          = var.subnet_ranges[count.index]
  region                 = var.region
  network                = google_compute_network.vpc.id
  private_ip_google_access = true

  project = var.project_id
}


resource "google_compute_firewall" "firewall" {
  name = "allow-http-ssh-https"
  network = google_compute_network.vpc_network.id
  allow {
    protocol = "tcp"
    ports = ["80", "22","8080", "443"]
  }
  source_ranges = ["0.0.0.0/0"]
  labels = {
    environment = "dev"
  }
}
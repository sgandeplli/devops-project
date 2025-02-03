resource "google_compute_instance_template" "vm_template" {
  name = var.instance-template-name
  region = var.region
  machine_type = var.machine-type
  disk {
    source_image = var.source_image
  }
  network_interface {
    network = google_compute_network.vpc_network.id
    subnetwork = google_compute_subnetwork.vpc_subnet.id
    access_config {}
 }
  metadata_startup_script = <<EOF
  #!/bin/bash
  sudo apt-get update -y
  sudo apt-get install apach2 -y
  sudo systemctl start apache2
  sudo systemctl enable apache2
  sudo systemctl restart apache2
  echo "<h1>Deployed via Terraform</h1>" |
  sudo tee /var/www/html/index.html 
  EOF
 depends_on = [google_compute_network.vpc_network, google_compute_subnetwork.vpc_subnet]
 labels = {
    environment = "dev"
  }
 }
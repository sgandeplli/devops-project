resource "google_compute_instance" "tf-vm"{
    name = var.vm-name
    machine_type = var.machine-type
    zone = var.zone
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-12"
        }
    }
    network_interface {
        network = google_compute_network.vpc_network.id
        subnetwork = google_compute_subnetwork.vpc_subnet.id    
        access_config {
        }
    }
    depends_on = [google_compute_network.vpc_network, google_compute_subnetwork.vpc_subnet]
}
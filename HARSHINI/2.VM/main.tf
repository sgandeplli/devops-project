resource "google_compute_instance" "tf-vm"{
    name = ""
    machine_type = ""
    zone = ""
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-12"
        }
    }
    network_interface {
        network = "custom-vpc"
        access_config {
        }
    }
}
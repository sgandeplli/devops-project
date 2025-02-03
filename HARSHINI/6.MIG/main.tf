resource "google_compute_instance_group_manager" "tf-mig"{
    name = "tf-mig-ig"
    base_instance_name = "mig-ig"
    zone = "us-central1-a"
     named_ports {
        name = "http"
        port = 80
    }
    version {
        instance_template = google_compute_instance_template.vm_template.self_link

    }
    target_size = 2
    auto_healing_policies{
        health_check = google_compute_health_check.tf-hc.self_link
        initial_delay_sec = 300
    }
    
    
}
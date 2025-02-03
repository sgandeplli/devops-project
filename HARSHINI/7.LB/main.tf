resource "google_compute_backend_service" "lb-backend-service" {
  name = "lb-backend-service"
  backend {
    #mig
    group = google_compute_instance_group_manager.tf-mig.instance_group
  }
  health_checks = [google_compute_health_check.tf-hc.self_link]
  load_balancing_scheme = "EXTERNAL"
  protocol = "HTTP"
  timeout_sec = 10
  region = "us-central1"
}

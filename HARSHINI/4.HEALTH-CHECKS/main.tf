resource "google_compute_health_check" "tf-hc"{
    name = "http-health-check"
    source_region = "us-central1"
    check_interval_sec = 20
    timeout_sec = 15
    healthy_threshold = 2
    unhealthy_threshold = 2

    http_health_check {
        port_name = "http"
        host = "0.0.0.0/0"
        port = 8080
        request_path = "/"
        proxy_header = "NONE"
        response = "I AM HEALTHY"
    }
}
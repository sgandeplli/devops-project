output "vpc-name"{
    value = google_compute_network.vpc.name
}
output "subnet-name"{
    value = google_compute_instance.vpc_subnet.name
}
output "ip-cidr-range"{
    value = google_compute_subnetwork.vpc_subnet.ip_cidr_range
}
output "region"{
    value = var.region
}   
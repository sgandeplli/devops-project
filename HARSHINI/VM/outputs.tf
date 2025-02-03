output "vm-name" {
    value = google_compute_instance.tf-vm.name
}
output "machine-type" {
    value = google_compute_instance.tf-vm.machine_type
}
output "zone" {
    value = var.zone
}   
output "project" {
    value = var.project
}

output "instance-template-name" {
    value = google_compute_instance_template.vm_template.name
}
output "machine-type" {
    value = google_compute_instance_template.vm_template.machine_type
}
output "region" {
    value = var.region
}
output "source_image" {
    value = var.source_image
}
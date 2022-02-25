//network
resource "google_compute_network" "vpc_network" {
  name                    = var.name
  description             = var.description
  auto_create_subnetworks = var.auto_create_subnetworks
  routing_mode            = var.routing_mode
  mtu                     = var.mtu
  project                 = var.project
  tags                    = var.tags
}

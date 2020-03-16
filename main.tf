resource "google_compute_instance" "web" {
  name         = "web"
  machine_type = var.instance_type
  zone         = "us-east1-a"
  count        = 1

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }
}
resource "google_compute_instance" "lab-fast-ci-cd" {
  provider                  = google
  name                      = "lab-fast-ci-cd"
  machine_type              = var.google_instance_type
  allow_stopping_for_update = true
  zone                      = var.google_zone
  metadata = {
    ssh-keys = "ansible:${file(var.ssh_key_pub)}"
  }

  network_interface {
    network = var.google_network
    access_config {}
  }

  tags = ["http-server", "https-server", "ssh"]

  boot_disk {
    initialize_params {
      image = var.google_instance_image
    }
  }

}

output "instance_nat_ip" {
  value = google_compute_instance.lab-fast-ci-cd.network_interface[0].access_config[0].nat_ip
}
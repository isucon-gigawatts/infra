# for practicing ISUCON

provider "google" {
  project     = "isucon-gigawatts"
  region      = "asia-northeast1"
  credentials = file(var.credential_file)
}

# doc: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = "n1-standard-2"
  zone         = "asia-northeast1-b"
  tags         = ["tag", "isucon10"]
  boot_disk {
    auto_delete = true
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
      size  = 20
      type  = "pd-standard"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}

resource "google_compute_instance" "cp" {
  name         = "cp"
  machine_type = "e2-standard-2"
  zone         = "europe-west6-a"

  boot_disk {
    auto_delete = true

    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240307b"
      size  = 20
      type  = "pd-balanced"
    }

    mode  = "READ_WRITE"
  }

  network_interface {
    network = google_compute_network.lfclass.name
    access_config {
      // Ephemeral IP
    }
  }
}

resource "google_compute_instance" "worker" {
  name         = "worker"
  machine_type = "e2-standard-2"
  zone         = "europe-west6-a"

  boot_disk {
    auto_delete = true

    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240307b"
      size  = 20
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  network_interface {
    network = google_compute_network.lfclass.name
    access_config {
      // Ephemeral IP
    }
  }
}


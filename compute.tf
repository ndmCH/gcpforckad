resource "google_compute_instance" "cp" {
  name         = "cp"
  machine_type = "e2-standard-2"
  zone         = "europe-central6-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20230328"
      size  = 20
    }
  }

  network_interface {
    network = google_compute_network.lfclass.name
    access_config {
      // Ephemeral IP
    }
  }

resource "google_compute_instance" "worker" {
  name         = "worker"
  machine_type = "e2-standard-2"
  zone         = "europe-central6-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20230328"
      size  = 20
    }
  }

  network_interface {
    network = google_compute_network.lfclass.name
    access_config {
      // Ephemeral IP
    }
  }


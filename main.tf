
provider "scaleway" {
  region = "${var.region}"
  organization = "${var.org}"
  token = "${var.tok}"
}

data "scaleway_image" "terraformclarisse" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "terraformclarisse" {
  name  = "terraformclarisse"
  image = "${data.scaleway_image.terraformclarisse.id}"
  type  = "START1-S"
}
resource "scaleway_ip" "ip" {
  server = "${scaleway_server.terraformclarisse.id}"
}


resource "scaleway_volume" "terraformclarisse" {
  name       = "terraformclarissevolume"
  size_in_gb = 50
  type       = "l_ssd"
}


provider "scaleway" {
  SCALEWAY_ORGANIZATION = "${var.SCALEWAY_ORGANIZATION}"
  SCALEWAY_TOKEN        = "${var.SCALEWAY_TOKEN}"
  region = "${var.region}"
}


resource "scaleway_server" "terrclarisseana" {
  name  = "terrclarisseana"
  image = "27452e61-310e-4fe5-93af-0a0bdf4c20a6"
  type  = "START1-S"
}

resource "scaleway_ip" "ip" {
  server = "${scaleway_server.terrclarisseana.id}"
}

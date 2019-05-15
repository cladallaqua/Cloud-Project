provider "scaleway" {
  region = "${var.region}"
  organization = "${var.SCALEWAY_ORGANIZATION}"
  token        = "${var.SCALEWAY_TOKEN}"
}


provider "scaleway" {
  organization = "${var.org}"
  token        = "${var.tok}"
  region       = "par1"
}

resource "scaleway_ip" "ip" {
  server = "${scaleway_server.cloud-courses.id}"
}

data "scaleway_image" "cloud-courses" {
  architecture = "x86_64"
  name         = "Ubuntu Bionic"
}

resource "scaleway_server" "cloud-courses" {
  name  = "cloud-courses"
  public_ip = "51.158.187.107"
  image = "${data.scaleway_image.cloud-courses.id}"
  type  = "START1-S"

}

resource "scaleway_volume" "cloud-courses" {
  name       = "cloud-coursesvolume"
  size_in_gb = 50
  type       = "l_ssd"
}


resource "scaleway_security_group" "http" {
  name        = "http"
  description = "allow HTTP and HTTPS traffic"
}

resource "scaleway_security_group_rule" "http_accept" {
  security_group = "${scaleway_security_group.http.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "0.0.0.0/0"
  protocol  = "TCP"
  port      = 80
}

resource "scaleway_security_group_rule" "https_accept" {
  security_group = "${scaleway_security_group.http.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "0.0.0.0/0"
  protocol  = "TCP"
  port      = 443
}

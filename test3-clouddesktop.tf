resource "aws_route53_record" "test3-clouddesktop-vnc" {
  zone_id = data.aws_route53_zone.campusrover.zone_id
  name = "vnc.test3.ros.${data.aws_route53_zone.campusrover.name}"
  type = "A"
  ttl = "3600"
  records = [var.ingress_ip_new]
}

resource "aws_route53_record" "test3-clouddesktop-code" {
  zone_id = data.aws_route53_zone.campusrover.zone_id
  name = "code.test3.ros.${data.aws_route53_zone.campusrover.name}"
  type = "A"
  ttl = "3600"
  records = [var.ingress_ip_new]
}

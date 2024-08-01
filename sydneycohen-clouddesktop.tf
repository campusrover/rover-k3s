resource "aws_route53_record" "sydneycohen-clouddesktop-vnc" {
  zone_id = data.aws_route53_zone.campusrover.zone_id
  name = "vnc.sydneycohen.ros.${data.aws_route53_zone.campusrover.name}"
  type = "A"
  ttl = "3600"
  records = [var.ingress_ip_new]
}

resource "aws_route53_record" "sydneycohen-clouddesktop-code" {
  zone_id = data.aws_route53_zone.campusrover.zone_id
  name = "code.sydneycohen.ros.${data.aws_route53_zone.campusrover.name}"
  type = "A"
  ttl = "3600"
  records = [var.ingress_ip_new]
}

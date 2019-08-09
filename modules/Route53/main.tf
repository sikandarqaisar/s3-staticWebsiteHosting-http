resource "aws_route53_record" "www" {
  zone_id ="${var.zoneId}"
  name    = "${var.HostedName}"
  type    = "A"

  alias {
    name       = "${var.targetAlias}"
    zone_id    =     "${var.bucketZoneId}"
    evaluate_target_health = "false"
  }
}

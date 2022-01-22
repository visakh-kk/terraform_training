


resource "aws_acm_certificate" "kk-domain" {
  domain_name       = "visakhkk.cf"
  validation_method = "DNS"
}

data "aws_route53_zone" "kk-r53" {
  name         = "visakhkk.cf"
}

resource "aws_route53_record" "kk-record" {
  for_each = {
    for i in aws_acm_certificate.kk-domain.domain_validation_options : i.domain_name => {
      name   = i.resource_record_name
      record = i.resource_record_value
      type   = i.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.kk-r53.zone_id
}

resource "aws_acm_certificate_validation" "kk-validation" {
  certificate_arn         = aws_acm_certificate.kk-domain.arn
  validation_record_fqdns = [for record in aws_route53_record.kk-record : record.fqdn]
}

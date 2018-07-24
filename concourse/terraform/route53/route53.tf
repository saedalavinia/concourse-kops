resource "aws_route53_zone" "main" {
  name    = "${var.hosted_zone}"
  comment = "Public Hosted Zone for Kubernetes deployed via kops"

  tags = {
    Environment = "${var.environment_tag}"
  }
}

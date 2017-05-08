resource "aws_route53_health_check" "child1" {
  fqdn              = "foobar.terraform.com"
  port              = 80
  type              = "HTTP"
  resource_path     = "/"
  failure_threshold = "5"
  request_interval  = "30"

  tags = {
    Name = "tf-test-health-check"
  }
}

resource "aws_route53_health_check" "foo" {
  type                   = "CALCULATED"
  child_health_threshold = 1
  child_healthchecks     = ["${aws_route53_health_check.child1.id}"]

  tags = {
    Name = "tf-test-calculated-health-check"
  }
}
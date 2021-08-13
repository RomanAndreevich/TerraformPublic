output "aws_region_name" {
  value = data.aws_region.current.name
}

output "aws_region_description" {
  value = data.aws_region.current.description
}

output "web_loadbalancer_url" {
  value = aws_elb.web.dns_name
}

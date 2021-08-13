# 2 servers with Apache 2 installed

resource "aws_launch_configuration" "web" {
  name_prefix     = "HA-WebServer-LC-"
  image_id        = data.aws_ami.amazon2.id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.web.id]
  user_data       = file("user_data.sh")
  lifecycle {
    create_before_destroy = true
  }
}

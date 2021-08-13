# Search AMI's IDs. Can work in all regions.

data "aws_ami" "ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

data "aws_ami" "amazon2" {
  owners      = ["137112412989"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

data "aws_ami" "redhat8" {
  owners      = ["309956199498"]
  most_recent = true
  filter {
    name   = "name"
    values = ["RHEL-8*-x86_64-*-GP2"]
  }
}

data "aws_ami" "sles15" {
  owners      = ["013907871322"]
  most_recent = true
  filter {
    name   = "name"
    values = ["suse-sles-15-*-hvm-ssd-x86_64"]
  }
}

data "aws_ami" "debian10" {
  owners      = ["136693071363"]
  most_recent = true
  filter {
    name   = "name"
    values = ["debian-10-amd64*"]
  }
}

data "aws_ami" "freebsd13" {
  owners      = ["782442783595"]
  most_recent = true
  filter {
    name   = "name"
    values = ["FreeBSD 13.0-CURRENT-amd64-*"]
  }
}

data "aws_ami" "win2019" {
  owners      = ["801119661308"]
  most_recent = true
  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }
}

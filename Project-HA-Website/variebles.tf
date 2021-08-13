variable "env" {
  type    = string
  default = "dev"
}

variable "region" {
  type    = string
  default = "eu-centra-1"
}

variable "allow_ports" {
  description = "List of ports to open for servers"
  default     = ["80", "22", "8080"]
}

variable "common_tags" {
  default = {
    Project     = "HA-Website"
    Owner       = "Roman Larin"
    Environment = "Development"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "allow_ports" {
  description = "List of ports to open for servers"
  type        = list(any)
  default     = ["80", "22", "8080", "3000", "9090", "9100", "2376"]
}

variable "common_tags" {
  default = {
    Project     = "Learning"
    Owner       = "Roman Larin"
    Environment = "Development"
  }
  type = map(any)
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

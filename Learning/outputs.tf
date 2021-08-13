output "aws_region_name" {
  value = data.aws_region.current.name
}

output "aws_region_description" {
  value = data.aws_region.current.description
}

output "aws_availability_zones" {
  value = data.aws_availability_zones.available.names
}

output "docker_main_public_ip" {
  value = aws_instance.docker_main.*.public_ip
}

output "docker_node_public_ip" {
  value = aws_instance.docker_node.*.public_ip
}

output "jenkins_master_public_ip" {
  value = aws_instance.jenkins_master.*.public_ip
}

output "jenkins_slave_public_ip" {
  value = aws_instance.jenkins_slave.*.public_ip
}

output "db_public_ip" {
  value = aws_instance.db.*.public_ip
}

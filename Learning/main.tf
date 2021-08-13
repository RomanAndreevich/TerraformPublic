resource "aws_instance" "docker_main" {
  count                  = 1
  ami                    = data.aws_ami.amazon2.id
  instance_type          = var.instance_type
  key_name               = "avtodor-eu-central-1"
  vpc_security_group_ids = [aws_security_group.dev.id]
  tags = {
    Name = "Docker-Main-server-${count.index + 1}"
  }
}

resource "aws_instance" "docker_node" {
  count                  = 3
  ami                    = data.aws_ami.amazon2.id
  instance_type          = var.instance_type
  key_name               = "avtodor-eu-central-1"
  vpc_security_group_ids = [aws_security_group.dev.id]
  tags = {
    Name = "Docker-Node-server-${count.index + 1}"
  }
  depends_on = [aws_instance.docker_main, ]
}

resource "aws_instance" "jenkins_master" {
  count                  = 1
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = "avtodor-eu-central-1"
  vpc_security_group_ids = [aws_security_group.dev.id]
  user_data              = file("user_data_deb_jenkins_master.sh")
  tags = {
    Name = "Jenkins-Master-server-${count.index + 1}"
  }
}

resource "aws_instance" "jenkins_slave" {
  count                  = 2
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = "avtodor-eu-central-1"
  vpc_security_group_ids = [aws_security_group.dev.id]
  user_data              = file("user_data_deb_jenkins_slave.sh")
  tags = {
    Name = "Jenkins-Slave-server-${count.index + 1}"
  }
  depends_on = [aws_instance.jenkins_master, ]
}

resource "aws_instance" "db" {
  count                  = 2
  ami                    = data.aws_ami.debian10.id
  instance_type          = var.instance_type
  key_name               = "avtodor-eu-central-1"
  vpc_security_group_ids = [aws_security_group.dev.id]
  user_data              = file("user_data_deb_db.sh")
  tags = {
    Name = "DB-server-${count.index + 1}"
  }
}

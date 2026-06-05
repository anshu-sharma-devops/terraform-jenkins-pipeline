provider "aws" {
  region = "ap-south-1"
}
resource "aws_security_group" "devops_sg" {

  name        = "devops-project-sg"
  description = "Security Group for Jenkins and App Server"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Jenkins"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "jenkins_server" {

  ami           = "ami-020979bc2b447912c"
  instance_type = "t3.micro"

  key_name = "devops-project-key"

  vpc_security_group_ids = [
    aws_security_group.devops_sg.id
  ]

  tags = {
    Name = "Jenkins-Server"
  }
}
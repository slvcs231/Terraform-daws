resource "aws_instance" "terraform_count" {
  ami = "ami-0220d79f3f480ecf5"
  #count = 3
  count = length(var.instances)
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all_count.id]

  tags = {
    Name = "var.instances [count.index]"
    Terraform = "True"
  }
}

resource "aws_security_group" "allow_all_count" {
  name = "allow-all-count"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]


  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}
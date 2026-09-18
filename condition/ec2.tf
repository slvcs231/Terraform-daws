resource "aws_instance" "Terraform-1" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_all_cond.id]

  tags = {
    Name      = "Terraform1"
    Terraform = "True"
  }
}

resource "aws_security_group" "allow_all_cond" {
    name = "allow_all_cond"

    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }

    ingress { 
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        
    }
  
}

resource "aws_instance" "frontend" {
  instance_type = "t2.micro"
  ami = "ami-04b4f1a9cf54c11d0"
  subnet_id = var.subnet_1_id
  security_groups = [ aws_security_group.for_ec2_instance.id ]
  tags = {
    Name = "Frontend"
  }
}

resource "aws_security_group" "for_ec2_instance" {
  name = "security_group"
  description = "security group for ec2" 
  vpc_id = var.vpc_id

   ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
   }

   ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

   }

   ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
   }

   egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
   }
   tags = {
     Name = "secruity Group"
   }
}

resource "aws_key_pair" "ssh_key" {
  key_name = "BAMUNU"
  public_key = var.public_key
  
}
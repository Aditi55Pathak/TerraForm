# keypair
resource "aws_key_pair" "my_key" {
    key_name   = "terra-key"
    public_key = file("C:\\Users\\aditi\\OneDrive\\文档\\DevOps\\Terraform\\TerraForm Project\\terra-key.pub")
}

# Security group with 22 port open
resource "aws_security_group" "allow_ssh" {
    name        = "allow_ssh"
    description = "Allow SSH inbound traffic"
    vpc_id      = data.aws_vpc.default.id  # Corrected reference

    # incoming
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    # outgoing
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

# default VPC
data "aws_vpc" "default" {
    default = true
}

# EC2 instance
resource "aws_instance" "my_instance" {
    ami           = "ami-040c33c6a51fd5d96" 
    instance_type = "t2.micro"
    key_name      = aws_key_pair.my_key.key_name
    security_groups = [aws_security_group.allow_ssh.name]

    tags = {
        Name = "MyInstance"
    }
}
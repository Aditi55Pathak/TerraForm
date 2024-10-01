resource "aws_instance" "terr_inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "terr_key"
  vpc_security_group_ids = ["sg-04ecda82424f51869"]
  tags = {
    Name    = "TerrInstance"
    Project = "Terraform Project"
  }



}
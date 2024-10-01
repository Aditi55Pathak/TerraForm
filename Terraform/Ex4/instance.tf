resource "aws_key_pair" "terrkey" {
  key_name   = "terr_key_here"
  public_key = file("terrakeymine.pub")
}

resource "aws_instance" "terr_inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.terrkey.key_name
  vpc_security_group_ids = ["sg-04ecda82424f51869"]
  tags = {
    Name    = "TerrInstance"
    Project = "Terraform Project"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    type        = "ssh"
    user        = var.USER
    private_key = file("terrakeymine")
    host        = self.public_ip
  }
}

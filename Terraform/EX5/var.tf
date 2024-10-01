variable "REGION" {
  default = "us-west-1"
}

variable "ZONE1" {
  default = "us-west-1b"
}

variable "ZONE2" {
  default = "us-west-1c"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-west-1 = "ami-066f98455b59ca1ee"
  }
}

variable "USER" {
  default = "ec2-user"
}
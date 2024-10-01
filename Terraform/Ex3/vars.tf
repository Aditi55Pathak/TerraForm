variable "REGION" {
  default = "us-west-1"
}

variable "ZONE1" {
  default = "us-west-1b"
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
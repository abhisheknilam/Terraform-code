variable "ami" {
  type        = string
  default = "ami-0f535a71b34f2d44a"
  description = "provide ami"
}

variable "instance_type" {
  type        = string
  default = "t2.micro"
  description = "ec2 instance Family"
}
variable "region" {
  type = string
  default = "ap-south-1"
  description = "Provide region to deploy the instance"
}

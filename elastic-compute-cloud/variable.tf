variable "ami" {
  type        = string
  default = "ami-0ddfba243cbee3768"
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
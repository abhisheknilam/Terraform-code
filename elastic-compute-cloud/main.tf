provider "aws" {
  //alias = "ap-south-1"
  region = var.region //region for the aws
}

/*
provider "aws" {          // Multi region providerf
    alias = "eu-west-1"
  region = "eu-west-1"
}
*/
resource "aws_instance" "ap-south" {
  //ami = "ami-02b49a24cfb95941c"
  ami = var.ami
  //instance_type = "t2.micro"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sgdemo.id]

}

resource "aws_security_group" "sgdemo" {
  vpc_id = "vpc-078892f2678919067"
  name   = "sgdemo"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    // ipv6_cidr_blocks = ["::/0"]
  }
    ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    // ipv6_cidr_blocks = ["::/0"]
  }
      ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    // ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}


/*resource "aws_instance" "eu-west" {
  provider = aws.eu-west-1
  ami = "ami-04e49d62cf88738f1"
  instance_type = "t2.micro"
  //vpc_security_group_ids = [aws_security_group.sgdemo.id]

}
*/

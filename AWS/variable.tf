variable "aws_access_key_id" {
  default = ""
}

variable "aws_secret_access_key" {
  default = ""
}

variable "aws_region" {
  default = "eu-west-1"
}

variable "key_name" {
  default = ""
}

variable "availability_zone" {
  default = {
    "primary": “eu-west-1b",
    "secondary": “eu-west-1a”
  }
}

variable "instance_type" {
  default = "t1.micro"
}

variable "ami" {
  default = "ami-25dd9324"
}
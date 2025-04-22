variable "aws_region" {
  description = "AWS region to deploy resources in"
  default     = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  default = "webapp-key" # This MUST match the key name in AWS us-east-2
}
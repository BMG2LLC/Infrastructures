# Input Variables
# AWS Region
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Region in which AWS Resources  will be deployed."
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t3.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "bmg2-key"
}
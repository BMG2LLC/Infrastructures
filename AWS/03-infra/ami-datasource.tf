# Get latest AMI ID for Amazon Linux2 OS 

// https://aws.amazon.com/amazon-linux-ami/
data "aws_ami" "amzlinux2" {
  most_recent      = true
  owners           = ["amazon"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240423"]
    #["al2023-ami-2023.4.20240416.0-kernel-6.1-x86_64"]
   
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
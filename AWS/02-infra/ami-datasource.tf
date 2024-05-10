# Get latest AMI ID for Amazon Linux2 OS 
// https://aws.amazon.com/amazon-linux-ami/
data "aws_ami" "amzlinux2" {
  most_recent      = true
  owners           = ["amazon"]
  filter {
    name   = "name"
    values = [al2023-ami-2023.4.20240416.0-kernel-6.1-x86_64]
    //["amzn2-ami-hvm-*-gp2"]
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
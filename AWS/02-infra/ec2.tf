# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = "ami-04e5276ebb8451442"
  instance_type = "t3.micro"
 # user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}
resource "aws_instance" "app_server" {
  ami           = "ami-0ca05c6eaa4ac40e0"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2_tf"
  }

}

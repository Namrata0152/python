resource "aws_instance" "app_server" {
  ami           = "ami-0b36cd6786bcfe120"
  instance_type = "t2.micro"

  tags = {
    "Name" = "ec2_new"
  }


}

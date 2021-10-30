resource "aws_launch_configuration" "yljo_lacf" { 
  name          = "yljo-web"
  image_id      = aws_ami_from_instance.yljo_ami.id
  instance_type = "t2.micro"
  iam_instance_profile = "admin-role"
  security_groups = [aws_security_group.yljo_websg.id]
  key_name = "tf-key"
  user_data =<<-EOF
              #!/bin/bahs
              systemctl start httpd
              systemctl enable httpd
              EOF
  lifecycle {
    create_before_destroy = true
  }
}
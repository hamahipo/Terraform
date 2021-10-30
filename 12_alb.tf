# Application LoadBalancer Deploy 
resource "aws_lb" "yljo_lb" {
  name                   = "yljo-alb"
  internal               = false
  load_balancer_type     = "application"
  security_groups        = [aws_security_group.yljo_websg.id]
  subnets                = [aws_subnet.yljo_puba.id, aws_subnet.yljo_pubc.id]
  
  tags = {
    Name = "yljo-alb"
  }
}
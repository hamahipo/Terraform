resource "aws_lb_listener" "yljo_lblist" {
    load_balancer_arn = aws_lb.yljo_lb.arn
    port = 80
    protocol = "HTTP"

    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.yljo_lbtg.arn

    }
}
resource "aws_autoscaling_attachment" "yljo-atatt" {
    autoscaling_group_name = aws_autoscaling_group.yljo_atsg.id
    alb_target_group_arn = aws_lb_target_group.yljo_lbtg.arn
    
}
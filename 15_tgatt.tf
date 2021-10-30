resource "aws_lb_target_group_attachment" "yljo_lbtg_att" {
  target_group_arn = aws_lb_target_group.yljo_lbtg.arn
  target_id        = aws_instance.yljo_weba.id
  port             = 80
}

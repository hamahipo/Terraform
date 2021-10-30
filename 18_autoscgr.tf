resource "aws_placement_group" "yljo_pg" {
    name = "yljo-pg"
    strategy = "cluster"
}

resource "aws_autoscaling_group" "yljo_atsg" {
    name                      = "yljo-atrg"
    min_size                  = 2
    max_size                  = 8
    health_check_grace_period = 300
    health_check_type         = "ELB"
    desired_capacity          =  2
    force_delete              = true
    launch_configuration      = aws_launch_configuration.yljo_lacf.name
    vpc_zone_identifier       = [aws_subnet.yljo_puba.id,aws_subnet.yljo_pubc.id]
}
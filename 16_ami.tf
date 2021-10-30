resource "aws_ami_from_instance" "yljo_ami" {
    name = "yljo-ami"
    source_instance_id = aws_instance.yljo_weba.id
}
resource "aws_security_group" "yljo_websg" {
  name        = "Allow-WEB"
  description = "http-ssh-icmp"
  vpc_id = aws_vpc.yljo_vpc.id

  ingress = [
    {
      description     = "ssh"
      from_port       = 22
      to_port         = 22
      protocol        = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks  = ["::/0"]
      security_groups = null
      prefix_list_ids = null
      self = null
    },
    {
      description     = "http"
      from_port       = 80
      to_port         = 80
      protocol        = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks  = ["::/0"]
      security_groups = null
      prefix_list_ids = null
      self = null
    },
    {
      description     = "mysql"
      from_port       = 3306
      to_port         = 3306
      protocol        = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks  = ["::/0"]
      security_groups = null
      prefix_list_ids = null
      self = null
    },
    {
      description     = "icmp"
      from_port       = -1
      to_port         = -1
      protocol        = "icmp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks  = ["::/0"]
      security_groups = null
      prefix_list_ids = null
      self = null
    }
  ]

   egress = [
    {
      description     = "All"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      security_groups = null
      prefix_list_ids = null
      self = null
    }
   ]
  
  tags = {
    Name = "yljo-sg"
  }
}

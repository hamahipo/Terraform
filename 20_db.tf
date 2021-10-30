resource "aws_db_instance" "yljo_wpdb" {
  allocated_storage = 10
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  name = "wordpress"
  identifier = "wp-db"
  username = "admin"
  password = "It12345!"
  parameter_group_name = "default.mysql5.7"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.yljo_dbsn.id
  skip_final_snapshot = true
  tags = {
      Name = "yljo-wpdb"
  }
}

resource "aws_db_subnet_group" "yljo_dbsn" {
    name = "yljo-db-group"
    subnet_ids = [aws_subnet.yljo_pria.id,aws_subnet.yljo_pric.id]
    tags = {
        Name = "yljo-dbsb-group"
    }
  }
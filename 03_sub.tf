# 가용영역 a의 Public Subnet
resource "aws_subnet" "yljo_puba" {
  vpc_id            = aws_vpc.yljo_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "yljo-puba"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "yljo_pria" {
  vpc_id            = aws_vpc.yljo_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "yljo-pria"
  }
}

# 가용영역 a의 Public Subnet
resource "aws_subnet" "yljo_pubc" {
  vpc_id            = aws_vpc.yljo_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "yljo-pubc"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "yljo_pric" {
  vpc_id            = aws_vpc.yljo_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "yljo-pric"
  }
}
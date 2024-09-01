resource "aws_vpc" "aws_vpc" {
 cidr_block = var.vpc_cidr_block
 tags = {
    Name = "day-5-vpc" ,
    created-by="Yousef"
  }
}

resource "aws_subnet" "aws_subnet" {
 vpc_id = aws_vpc.aws_vpc.id
 cidr_block = var.subnet_cidr_block
 tags = {
    Name = "day-5-public-subnet" ,
    created-by="Yousef"
  }

}
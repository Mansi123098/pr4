provider "aws" {
  region = "ap-northeast-3"  
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "mansitasknew1234560986424678"  
  

  tags = {
    Name = "MyExampleBucket"
  }
}

resource "aws_dynamodb_table" "tf-db" {
  name           = "tf-db"
  billing_mode    = "PAY_PER_REQUEST" 
  hash_key        = "LockID"

  attribute {
    name = "LockID"
    type = "S"  
  }

  tags = {
    Name        ="TF db"
  }
}



resource "aws_instance" "mansitasknew1" {
    ami = "ami-0754d03b26ea44c28"
    instance_type = "t2.micro"
  
}

resource "aws_instance" "mansitasknew123" {
    ami = "ami-0754d03b26ea44c28"
    instance_type = "t2.micro"
  
}

resource "aws_instance" "mansitasknew23" {
    ami = "ami-0754d03b26ea44c28"
    instance_type = "t2.micro"
  
}
# You need to create a vars.tf file to add variables such as (AMIS,REGIONS, AWS_ACCESS_KEY and AWS_SECRET_KEY)
resource "aws_instance" "example" {
  ami           = lookup(var.AMIS, var.AWS_REGION, "")
  instance_type = "t3.micro"
}


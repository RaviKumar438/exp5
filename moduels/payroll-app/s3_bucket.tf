# main.tf

resource "random_string" "unique_suffix" {
  length  = 6
  special = false
  upper   = false
}

resource "aws_s3_bucket" "payroll_data" {
  bucket = "us-west-2-flexit-payroll-alpha-22001c-${random_string.unique_suffix.result}"  # Dynamically adds unique suffix
  acl    = "private"

  tags = {
    Name = "Payroll Data Bucket"
  }
}

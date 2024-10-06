// Write terraform code for s3 bucket

resource "aws_s3_bucket" "my-bucket" {
    bucket = "my-unique-tf-test-bucket-pattagobhi" 
    tags = {
        Name = "s3_free_bucket"
    }
}
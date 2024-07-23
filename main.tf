resource "random_id" "server" {
  byte_length = 4
}

resource "aws_cloudformation_stack" "s3_bucket" {
  name = "s3-bucket-stack"

  template_body = jsonencode({
    Resources = {
      myS3 = {
        Type = "AWS::S3::Bucket"
        Properties = {
          "BucketName" : "tsanghan-ce6-terraform-cloudformation-s3-bucket",
          Tags = [
            {
              Key   = "Name"
              Value = "tsanghan-ce6"
            }
          ]
        }
      }
    }
  })
}
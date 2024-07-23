```
sctp-ce6-mod2.16-terraform-cloudformation on 🌱 main via 💠 default took 14s
λ tofu plan -out tf.tfplan

OpenTofu used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

OpenTofu will perform the following actions:

  # aws_cloudformation_stack.s3_bucket will be created
  + resource "aws_cloudformation_stack" "s3_bucket" {
      + id            = (known after apply)
      + name          = "s3-bucket-stack"
      + outputs       = (known after apply)
      + parameters    = (known after apply)
      + policy_body   = (known after apply)
      + tags_all      = (known after apply)
      + template_body = jsonencode(
            {
              + Resources = {
                  + myS3 = {
                      + Properties = {
                          + BucketName = "tsanghan-ce6-terraform-cloudformation-s3-bucket"
                          + Tags       = [
                              + {
                                  + Key   = "Name"
                                  + Value = "tsanghan-ce6"
                                },
                            ]
                        }
                      + Type       = "AWS::S3::Bucket"
                    }
                }
            }
        )
    }

  # random_id.server will be created
  + resource "random_id" "server" {
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 4
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: tf.tfplan

To perform exactly these actions, run the following command to apply:
    tofu apply "tf.tfplan"

λ tofu apply "tf.tfplan"
random_id.server: Creating...
random_id.server: Creation complete after 0s [id=uNvTbA]
aws_cloudformation_stack.s3_bucket: Creating...
aws_cloudformation_stack.s3_bucket: Still creating... [10s elapsed]
aws_cloudformation_stack.s3_bucket: Creation complete after 18s [id=arn:aws:cloudformation:ap-southeast-1:255945442255:stack/s3-bucket-stack/56d7fda0-4903-11ef-a510-020377c55259]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```
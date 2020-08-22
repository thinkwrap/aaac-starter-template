###################################################################
# Global variables
###################################################################

aws_region = "us-east-1"

account_id    = "000000"
cus_id        = "000"
env_id        = "dev"
app_id        = "sys"
customer_name = "customer long name"

// Specifiy `name_prefix`. If not specified, Pivotree naming conventions are applied to construct the resource name.
#name_prefix        = "example-name"

// Optional tags
tags = {
  key1 = "value1"
  key2 = "value2"
}
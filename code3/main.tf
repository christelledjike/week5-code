resource "aws_lightsail_instance" "custom" {
  name              = "custom1"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = file("script.sh")
  key_pair_name     = "week2"
  tags = {
    Team      = "DevOps"
    env       = "Dev"
    create_by = "terraform"

  }
}
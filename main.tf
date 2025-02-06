resource "aws_lightsail_instance" "custom" {
  name              = "femiserver"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data = "sudo yum install httpd -y && systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This was made with terraform baby</h1>' > /var/www/html/index.html"
  key_pair_name     = "centos-key"
  tags = {
    Team = "Devops"
    env = "dev"
    Created_by = "terraform"
  }
}
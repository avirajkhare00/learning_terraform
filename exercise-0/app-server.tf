/* App servers */
resource "aws_instance" "app" {
  count             = 1
  ami               = var.amis[var.region]
  instance_type     = "t2.micro"
  key_name          = aws_key_pair.deployer.key_name
  source_dest_check = true
  user_data         = file("cloud-config/app.yml")
  tags = {
    Name = "demo-001"
  }
}

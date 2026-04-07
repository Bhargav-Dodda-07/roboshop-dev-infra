# Create EC2 instance

resource "aws_instance" "catalogue" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  subnet_id = local.private_subnet_id
  vpc_security_group_ids = [local.catalogue_sg_id]

  tags = merge(
    local.common_tags,
    {
        Name = "${local.common_name_suffix}-catalogue"
    }
  )
}
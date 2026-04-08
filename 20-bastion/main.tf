resource "aws_instance" "bastion" {
    ami = local.ami_id
    instance_type = "t3.micro"
    subnet_id = local.public_subnet_id
    vpc_security_group_ids = [local.bastion_sg_id]
    iam_instance_profile = aws_iam_instance_profile.bastion.name

    # Define the root volume size
    root_block_device {
        volume_size = 50           # Size in GiB
        volume_type = "gp3"        # General Purpose SSD (gp3 is recommended over gp2)
        delete_on_termination = true
    }

    user_data = file("bastion.sh")
    tags = merge(
        local.common_tags,
        {
            Name = "${var.project_name}-${var.environment}-bastion"
        }
    )
}

resource "aws_iam_instance_profile" "bastion" {
  name = "bastion"
  role = "BastionTerraformAdmin"
}
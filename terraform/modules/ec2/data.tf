
data "aws_iam_role" "admin" {
  name = "terraform_role"
}

resource "aws_iam_instance_profile" "admin" {
  name = "${var.tags["Name"]}_profile"
  role = data.aws_iam_role.admin.name
}
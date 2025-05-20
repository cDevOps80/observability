
data "aws_iam_role" "admin" {
  name = "terraform_role"
}

resource "aws_iam_instance_profile" "admin" {
  name = "prometheus_profile"
  role = data.aws_iam_role.admin.name
}
data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "lambda_role_policy" {
  statement {
    actions = [
      "*"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }
}
resource "aws_lambda_function" "lambda_hworld" {
  function_name = "hello_world"
  role          = aws_iam_role.lambda_role.arn
  package_type  = "Image"
  image_uri     = "${aws_ecr_repository.helloworld_elktgo.repository_url}:latest"

  memory_size = 128
  timeout     = 15
}

resource "aws_iam_role" "lambda_role" {
  name               = "lambda-hworld-role"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role_policy.json
}

resource "aws_iam_role_policy" "lambda_role_policy" {
  policy = data.aws_iam_policy_document.lambda_policy.json
  role   = aws_iam_role.lambda_role.name
}

resource "aws_ecr_repository" "helloworld_elktgo" {
  name                 = "helloworld-elktgo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}
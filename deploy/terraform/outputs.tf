output "api_endpoint" {
  value = "${aws_api_gateway_stage.apigw_stage.invoke_url}/prod"
}
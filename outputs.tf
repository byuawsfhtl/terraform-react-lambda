output "s3_bucket" {
  value = module.s3_site.site_bucket.bucket
}

output "cf_distribution_id" {
  value = module.s3_site.cf_distribution.id
}

output "url" {
  value = local.url
}

output "lambda_api_lambda_arns" {
    description = "The ARNs of the Lambda functions from all api_endpoint instances"
    value       = module.lambda_api.lambda_api_lambda_arns
}
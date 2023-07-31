variable "project_name" {
  type        = string
  description = "The name of the project in TitleCase."
}
variable "app_name" {
  type        = string
  description = "The name of the project in kebab-case."
}

variable "env" {
  type        = string
  description = "The branch being deployed"
}

variable "ecr_repo" {
  type        = string
  description = "The ECR repository that contains the image for the lambda functions."
}
variable "image_tag" {
  type        = string
  description = "The image tag for the Docker image (the timestamp)."
}

variable "lambda_function_definitions" {
  type = list(object({
    path_part       = string
    http_method     = string
    command         = list(string)
    allowed_headers = optional(string)
    timeout         = optional(number)
  }))
  description = "The definitions for each lambda function."
}
variable "lambda_policies" {
  type        = list(string)
  description = "List of IAM Policy ARNs to attach to the task execution policy."
  default     = []
}

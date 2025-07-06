variable "is_aws_profile_used" {
  description = "AWSプロファイルを使用するかどうか"
  default     = true
  type        = bool
}

variable "aws_profile" {
  description = "使用するAWSプロファイル名"
  default     = "terraform-ex-dev-terraform-user"
  type        = string
}

plugin "terraform" {
    enabled = true
    preset  = "recommended"
}

plugin "aws" {
    enabled = true # プラグインを有効化
    deep_check = false # クラウド上の実際のリソースはチェック対象に含めない
    version = "0.40.0"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

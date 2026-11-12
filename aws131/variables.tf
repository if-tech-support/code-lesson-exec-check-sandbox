variable "env" {
  description = "環境の名前（staging か production）"
  type        = string

  validation {
    condition     = contains(["staging", "production"], var.env)
    error_message = "env は staging か production にしてください。"
  }

  # 選んでいる workspace と、渡した変数ファイルの環境が食い違ったら止める
  validation {
    condition     = var.env == terraform.workspace
    error_message = "workspace と env が違います。terraform workspace show で確かめてください。"
  }
}

variable "force_destroy" {
  description = "バケットに中身が残っていても、destroy で消してよいか"
  type        = bool
  default     = false
}

variable "uploads_noncurrent_days" {
  description = "古い版のファイルを消すまでの日数"
  type        = number
  default     = 30
}

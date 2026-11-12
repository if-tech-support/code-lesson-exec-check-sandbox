moved {
  from = aws_s3_bucket.uploads
  to   = module.uploads.aws_s3_bucket.this
}

moved {
  from = aws_s3_bucket_public_access_block.uploads
  to   = module.uploads.aws_s3_bucket_public_access_block.this
}

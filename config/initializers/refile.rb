require "refile/s3"

aws = {
  access_key_id: ENV['AWS_ACCESS_KEY_ID_S3'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY_S3'],
  region: "ap-northeast-1",
  bucket: "ichigei",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)

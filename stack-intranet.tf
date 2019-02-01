provider "aws" {
  region = "us-east-1"
}

//S3 bucket
resource "aws_s3_bucket" "bucket_name" {
  bucket = "intranet-splash-apps"
  acl    = "public-read"
  website {
    index_document = "index.html"
    error_document = "404.html"
  }
}
resource "aws_cloudfront_origin_access_identity" "bucket_name" {
  comment = "intranet splash image"
}
data "aws_iam_policy_document" "bucket_name" {
  statement {
    actions = [
      "s3:GetObject",
    ]
    resources = [
      "${aws_s3_bucket.bucket_name.arn}/*",
    ]
    principals {
      type        = "AWS"
      identifiers = ["${aws_cloudfront_origin_access_identity.bucket_name.iam_arn}"]
    }
  }
}
resource "aws_s3_bucket_policy" "bucket_name" {
  bucket = "intranet-splash-apps"
  policy = "${data.aws_iam_policy_document.bucket_name.json}"
}
//Cloudfront with default cloudfront cert
resource "aws_cloudfront_distribution" "bucket_name" {
  origin {
    domain_name = "${aws_s3_bucket.bucket_name.bucket_domain_name}"
    origin_id   = "intranet-splash-apps"
    s3_origin_config {
      origin_access_identity = "${aws_cloudfront_origin_access_identity.bucket_name.cloudfront_access_identity_path}"
    }
  }
  enabled             = true
  default_root_object = "index.html"
  default_cache_behavior {
    viewer_protocol_policy = "redirect-to-https"
    compress               = true
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "intranet-splash-apps"
    min_ttl                = 0
    default_ttl            = 86400
    max_ttl                = 31536000
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  viewer_certificate {
    ssl_support_method             = "sni-only"
    cloudfront_default_certificate = "true"
  }
}

provider "aws"{
   region="${var.region}"
}

module "Route53" {
  source           = "./modules/Route53"
  zoneId           = "${var.zoneId}"
  HostedName       ="${var.HostedName}"
  targetAlias      ="${var.targetAlias}"
  bucketZoneId = "${module.s3-bucket.bucketZoneId}"
}
module "s3-bucket" {
  source               = "./modules/s3-bucket"
  bucketName          = "${var.bucketName}"
  Environment         = "${var.Environment}"
}
// module "s3-static-website" {
//   source  = "./modules/HttpsRoute53"

//   domain_name = "dev.eurustechnologies.com"
// //  redirects   = ["my-aws-s3-static-website.com"]
//   secret      = "SOME_SECRET_MANAGED_OUTSIDE_OF_VERSION_CONTROL"
//   cert_arn    = "	arn:aws:acm:us-east-1:853219876644:certificate/72ef6af5-4248-4c7c-83e2-69188210a9c1"
//   zone_id     = "Z1G47AP9B9WB7W"

//   tags = {
//     Foo = "Bar"
//   }
// }

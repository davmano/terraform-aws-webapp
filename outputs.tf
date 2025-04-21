output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "ssh_command" {
  value = "ssh -i webapp-key.pem ubuntu@${module.ec2.public_ip}"
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

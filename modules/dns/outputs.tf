output "hosted_zone_id" {
  value = element(concat(aws_route53_zone.main.*.zone_id, [""]), 0)
}

output "master_zone_nameservers" {
  value = flatten(aws_route53_zone.main.*.name_servers)
}

# Should only ever have 1 master zone so we assume
# and take the first element
output "master_zone_name" {
  value = element(concat(aws_route53_zone.main.*.name, [""]), 0)
}


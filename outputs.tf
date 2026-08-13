output "elbs_id" {
  description = "Map of id values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elbs_access_logs" {
  description = "Map of access_logs values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.access_logs if v.access_logs != null && length(v.access_logs) > 0 }
}
output "elbs_arn" {
  description = "Map of arn values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "elbs_availability_zones" {
  description = "Map of availability_zones values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.availability_zones if v.availability_zones != null && length(v.availability_zones) > 0 }
}
output "elbs_connection_draining" {
  description = "Map of connection_draining values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.connection_draining if v.connection_draining != null }
}
output "elbs_connection_draining_timeout" {
  description = "Map of connection_draining_timeout values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.connection_draining_timeout if v.connection_draining_timeout != null }
}
output "elbs_cross_zone_load_balancing" {
  description = "Map of cross_zone_load_balancing values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.cross_zone_load_balancing if v.cross_zone_load_balancing != null }
}
output "elbs_desync_mitigation_mode" {
  description = "Map of desync_mitigation_mode values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.desync_mitigation_mode if v.desync_mitigation_mode != null && length(v.desync_mitigation_mode) > 0 }
}
output "elbs_dns_name" {
  description = "Map of dns_name values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.dns_name if v.dns_name != null && length(v.dns_name) > 0 }
}
output "elbs_health_check" {
  description = "Map of health_check values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.health_check if v.health_check != null && length(v.health_check) > 0 }
}
output "elbs_idle_timeout" {
  description = "Map of idle_timeout values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.idle_timeout if v.idle_timeout != null }
}
output "elbs_instances" {
  description = "Map of instances values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.instances if v.instances != null && length(v.instances) > 0 }
}
output "elbs_internal" {
  description = "Map of internal values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.internal if v.internal != null }
}
output "elbs_listener" {
  description = "Map of listener values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.listener if v.listener != null && length(v.listener) > 0 }
}
output "elbs_name" {
  description = "Map of name values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "elbs_name_prefix" {
  description = "Map of name_prefix values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "elbs_region" {
  description = "Map of region values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "elbs_security_groups" {
  description = "Map of security_groups values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.security_groups if v.security_groups != null && length(v.security_groups) > 0 }
}
output "elbs_source_security_group" {
  description = "Map of source_security_group values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.source_security_group if v.source_security_group != null && length(v.source_security_group) > 0 }
}
output "elbs_source_security_group_id" {
  description = "Map of source_security_group_id values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.source_security_group_id if v.source_security_group_id != null && length(v.source_security_group_id) > 0 }
}
output "elbs_subnets" {
  description = "Map of subnets values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.subnets if v.subnets != null && length(v.subnets) > 0 }
}
output "elbs_tags" {
  description = "Map of tags values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "elbs_tags_all" {
  description = "Map of tags_all values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "elbs_zone_id" {
  description = "Map of zone_id values across all elbs, keyed the same as var.elbs"
  value       = { for k, v in aws_elb.elbs : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}


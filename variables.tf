variable "elbs" {
  description = <<EOT
Map of elbs, attributes below
Required:
    - listener (block):
        - instance_port (required)
        - instance_protocol (required)
        - lb_port (required)
        - lb_protocol (required)
        - ssl_certificate_id (optional)
Optional:
    - availability_zones
    - connection_draining
    - connection_draining_timeout
    - cross_zone_load_balancing
    - desync_mitigation_mode
    - idle_timeout
    - instances
    - internal
    - name
    - name_prefix
    - region
    - security_groups
    - source_security_group
    - subnets
    - tags
    - tags_all
    - access_logs (block):
        - bucket (required)
        - bucket_prefix (optional)
        - enabled (optional)
        - interval (optional)
    - health_check (block):
        - healthy_threshold (required)
        - interval (required)
        - target (required)
        - timeout (required)
        - unhealthy_threshold (required)
EOT

  type = map(object({
    availability_zones          = optional(set(string))
    connection_draining         = optional(bool)
    connection_draining_timeout = optional(number)
    cross_zone_load_balancing   = optional(bool)
    desync_mitigation_mode      = optional(string)
    idle_timeout                = optional(number)
    instances                   = optional(set(string))
    internal                    = optional(bool)
    name                        = optional(string)
    name_prefix                 = optional(string)
    region                      = optional(string)
    security_groups             = optional(set(string))
    source_security_group       = optional(string)
    subnets                     = optional(set(string))
    tags                        = optional(map(string))
    tags_all                    = optional(map(string))
    listener = list(object({
      instance_port      = number
      instance_protocol  = string
      lb_port            = number
      lb_protocol        = string
      ssl_certificate_id = optional(string)
    }))
    access_logs = optional(object({
      bucket        = string
      bucket_prefix = optional(string)
      enabled       = optional(bool)
      interval      = optional(number)
    }))
    health_check = optional(object({
      healthy_threshold   = number
      interval            = number
      target              = string
      timeout             = number
      unhealthy_threshold = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.elbs : (
        length(v.listener) >= 1
      )
    ])
    error_message = "Each listener list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.elbs : (
        v.desync_mitigation_mode == null || (contains(["monitor", "defensive", "strictest"], v.desync_mitigation_mode))
      )
    ])
    error_message = "must be one of: monitor, defensive, strictest"
  }
  validation {
    condition = alltrue([
      for k, v in var.elbs : (
        v.idle_timeout == null || (v.idle_timeout >= 1 && v.idle_timeout <= 4000)
      )
    ])
    error_message = "must be between 1 and 4000"
  }
  validation {
    condition = alltrue([
      for k, v in var.elbs : (
        alltrue([for item in v.listener : (item.instance_port >= 1 && item.instance_port <= 65535)])
      )
    ])
    error_message = "must be between 1 and 65535"
  }
  validation {
    condition = alltrue([
      for k, v in var.elbs : (
        alltrue([for item in v.listener : (item.lb_port >= 1 && item.lb_port <= 65535)])
      )
    ])
    error_message = "must be between 1 and 65535"
  }
  # Note: 21 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


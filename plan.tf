#
# Backup plans for default and non-critical resources
#

# Default backup plan
resource "aws_backup_plan" "backup_plan_default" {
  name = "backup_plan_default"
  rule {
    rule_name           = "backup_rule_default"
    target_vault_name   = aws_backup_vault.vault.name
    schedule            = local.plan_schedule_default
    start_window        = 60
    recovery_point_tags = tomap({ "plan" = "default", "time" = "${timestamp()}" })

    lifecycle {
      cold_storage_after = local.cold_storage_after_default
      delete_after       = local.delete_after_default
    }
  }
}

# Backup plan for non-critical resources
resource "aws_backup_plan" "backup_plan_non-critical" {
  name = "backup_plan_non-critical"
  rule {
    rule_name         = "backup_rule_non-critical"
    target_vault_name = aws_backup_vault.vault.name
    schedule          = local.plan_schedule_non-critical
    lifecycle {
      delete_after = local.delete_after_non-critical
    }
  }
}

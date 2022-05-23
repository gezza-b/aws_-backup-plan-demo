locals {

  region = "us-east-1"

  # Default Backup plan
  #plan_schedule_default      = "cron(0 12 * * ? *)" # every day at 12:00
  plan_schedule_default      = "cron(0 12 * * ? *)" # once every 10 minutes for testing
  cold_storage_after_default = 30
  delete_after_default       = 120

  # Backup plan for non-critical workloads
  plan_schedule_non-critical = "cron(15 09-22 * * ? *)" # testing: every hour
  delete_after_non-critical  = 120

}

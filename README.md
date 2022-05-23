This demo uses Terraform to demonstrate the implementation of a AWS Backup Plan. The Backup Plan itself will need a Backup Vault where the data can be stored. Backup Vaults can be hosted in any region and for cross-region backups we can use a vault in a different region. The following code creates a Backup Vault in our default region.
AWS Backup Selection is an easy way to declare which AWS resources will be backed up by which Backup Plan.

Link to the blog post describing the end-to-end approach:

[Getting Started with AWS Backup Plan](https://medium.com/@bachlmayr/getting-started-with-aws-backup-plan-4a572fb1b9d7)



<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.15.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_backup_plan.backup_plan_default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_plan) | resource |
| [aws_backup_plan.backup_plan_non-critical](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_plan) | resource |
| [aws_backup_selection.selection_default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_selection) | resource |
| [aws_backup_selection.selection_non-critical](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_selection) | resource |
| [aws_backup_vault.vault](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_vault) | resource |
| [aws_backup_vault_policy.vault_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_vault_policy) | resource |
| [aws_iam_role.role_backup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_recovrecovery_point_tags"></a> [recovrecovery\_point\_tags](#input\_recovrecovery\_point\_tags) | recovery tags | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

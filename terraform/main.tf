module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "<ACCOUNT EMAIL>"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "OU Name"
    SSOUserEmail              = "<SSO EMAIL>"
    SSOUserFirstName          = "FirstName"
    SSOUserLastName           = "LastName"
  }

  account_tags = {
    "deployed with" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Insert Name"
    change_reason       = "give reason"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

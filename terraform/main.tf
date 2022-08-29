module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mtp.aws.notifications.cis@capgemini.com"
    AccountName               = "aft-sandbox-account-01"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "mtp.aws.notifications.cis@capgemini.com"
    SSOUserFirstName          = "Test"
    SSOUserLastName           = "Akmal"
  } 

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Akmal Kadyrov"
    change_reason       = "Provision a Sandbox account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

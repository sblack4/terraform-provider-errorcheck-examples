# terraform-provider-errorcheck-examples

## Installing 

#### Terraform version 0.12.X

Install terraform manually and then run the install script:

```
curl -sSL \
    https://raw.githubusercontent.com/rhythmictech/terraform-provider-errorcheck/master/update-provider.sh \
    | bash -s 2.0.3
```

This will create a plugin directory at `./terraform.d`


## Running

```
>  tf apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # errorcheck_is_valid.workspace_should_match_env will be created
  + resource "errorcheck_is_valid" "workspace_should_match_env" {
      + id   = (known after apply)
      + name = "terraform workspace should match env variable"
      + test = {
          + "assert"        = "true"
          + "error_message" = "Change workspace to match env. Workspace: default, env: default"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

errorcheck_is_valid.workspace_should_match_env: Creating...
errorcheck_is_valid.workspace_should_match_env: Creation complete after 0s [id=terraform workspace should match env variable]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

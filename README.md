# terraform-provider-errorcheck-examples


## Installing 

#### Terraform version > 0.13
##### Install Terraform With tfenv

```
>  tfenv install
Installing Terraform v0.13.2
Downloading release tarball from https://releases.hashicorp.com/terraform/0.13.2/terraform_0.13.2_darwin_amd64.zip
################################################################################################################################################################################################### 100.0%
Downloading SHA hash file from https://releases.hashicorp.com/terraform/0.13.2/terraform_0.13.2_SHA256SUMS
Unable to verify OpenPGP signature unless logged into keybase and following hashicorp
Archive:  tfenv_download.yyFzMw/terraform_0.13.2_darwin_amd64.zip
  inflating: /usr/local/Cellar/tfenv/2.0.0/versions/0.13.2/terraform  
Installation of terraform v0.13.2 successful. To make this your default version, run 'tfenv use 0.13.2'
```

##### Install provider

```
>  alias tf="terraform"
>  tf init

Initializing the backend...

Initializing provider plugins...
- Finding rhythmictech/errorcheck versions matching "2.0.4-rc3"...
- Installing rhythmictech/errorcheck v2.0.4-rc3...
- Installed rhythmictech/errorcheck v2.0.4-rc3 (self-signed, key ID 7F8B4494D2DCE450)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/plugins/signing.html

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

#### Terraform version 0.12.X

Install terraform manually and then run the install script:

```
curl -sSL \
    https://raw.githubusercontent.com/rhythmictech/terraform-provider-errorcheck/master/update-provider.sh \
    | bash
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

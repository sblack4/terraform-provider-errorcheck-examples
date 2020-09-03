
terraform {
  required_providers {
    errorcheck = {
      source = "rhythmictech/errorcheck"
      version = "2.0.3"
    }
  }
}

resource "errorcheck_is_valid" "workspace_should_match_env" {
  name = "terraform workspace should match env variable"
  test = {
    assert        = terraform.workspace == "default"
    error_message = "Change workspace to match env. Workspace: ${terraform.workspace}, env: default"
  }
}


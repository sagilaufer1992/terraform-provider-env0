---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "env0_cloud_credentials_project_assignment Resource - terraform-provider-env0"
subcategory: ""
description: |-
  
---

# env0_cloud_credentials_project_assignment (Resource)



## Example Usage

```terraform
resource "env0_aws_credentials" "credentials" {
  name = "example"
  arn  = "Example role ARN"
}

data "env0_project" "project" {
  name = "Default Organization Project"
}

resource "env0_cloud_credentials_project_assignment" "example" {
  credential_id = env0_aws_credentials.credentials.id
  project_id    = data.env0_project.project.id
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `credential_id` (String) id of cloud credentials
- `project_id` (String) id of the project

### Read-Only

- `id` (String) The ID of this resource.



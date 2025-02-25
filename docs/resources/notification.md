---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "env0_notification Resource - terraform-provider-env0"
subcategory: ""
description: |-
  
---

# env0_notification (Resource)



## Example Usage

```terraform
resource "env0_project" "example_project" {
  name = "project-example"
}

resource "env0_notification" "example_notification" {
  name  = "notification-example"
  type  = "Slack"
  value = "https://www.slack.com/example/webhook"
}

resource "env0_notification_project_assignment" "test_assignment" {
  project_id               = env0_project.example_project.id
  notification_endpoint_id = env0_notification.example_notification.id
  event_names              = ["environmentMarkedForAutoDestroy", "deploymentCancelled"]
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `name` (String) the name of the notification
- `type` (String) 'Slack' or 'Teams'
- `value` (String) the target url of the notification

### Read-Only

- `id` (String) The ID of this resource.

## Import

Import is supported using the following syntax:

```shell
terraform import env0_notification.by_id ddda7b30-6789-4d24-937c-22322754934e
terraform import env0_notification.by_name "Example Notification"
```

---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "env0_ip_ranges Data Source - terraform-provider-env0"
subcategory: ""
description: |-
  
---

# env0_ip_ranges (Data Source)



## Example Usage

```terraform
data "env0_ip_ranges" "test" {}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Read-Only

- `id` (String) The ID of this resource.
- `ipv4` (List of String) list of env0 ipv4 CIDR addresses. This list can be used to whitelist inconming env0 traffic (E.g.: https://docs.env0.com/docs/templates#on-premises-git-servers-support)



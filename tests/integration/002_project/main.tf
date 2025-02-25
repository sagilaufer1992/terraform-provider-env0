provider "random" {}

resource "random_string" "random" {
  length    = 8
  special   = false
  min_lower = 8
}

resource "env0_project" "test_project" {
  name        = "Test-Project-${random_string.random.result}"
  description = "Test Description ${var.second_run ? "after update" : ""}"
}

resource "env0_project" "test_sub_project" {
  name              = "Test-Sub-Project-${random_string.random.result}"
  description       = "Test Description ${var.second_run ? "after update" : ""}"
  parent_project_id = env0_project.test_project.id
}

data "env0_project" "data_by_name" {
  name = env0_project.test_project.name
}

data "env0_project" "data_by_id" {
  id = env0_project.test_project.id
}

output "test_project_name" {
  value = replace(env0_project.test_project.name, random_string.random.result, "")
}

output "test_project_description" {
  value = env0_project.test_project.description
}

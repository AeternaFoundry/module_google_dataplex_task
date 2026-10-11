output "dataplex_tasks_id" {
  description = "Map of id values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no id are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataplex_tasks_create_time" {
  description = "Map of create_time values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no create_time are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "dataplex_tasks_deletion_policy" {
  description = "Map of deletion_policy values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dataplex_tasks_description" {
  description = "Map of description values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no description are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dataplex_tasks_display_name" {
  description = "Map of display_name values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no display_name are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dataplex_tasks_effective_labels" {
  description = "Map of effective_labels values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no effective_labels are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "dataplex_tasks_execution_spec" {
  description = "Map of execution_spec values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no execution_spec are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => one(v.execution_spec) if v.execution_spec != null && length(v.execution_spec) > 0 }
}
output "dataplex_tasks_execution_status" {
  description = "Map of execution_status values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no execution_status are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.execution_status if v.execution_status != null && length(v.execution_status) > 0 }
}
output "dataplex_tasks_labels" {
  description = "Map of labels values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no labels are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "dataplex_tasks_lake" {
  description = "Map of lake values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no lake are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.lake if v.lake != null && length(v.lake) > 0 }
}
output "dataplex_tasks_location" {
  description = "Map of location values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no location are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dataplex_tasks_name" {
  description = "Map of name values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no name are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dataplex_tasks_notebook" {
  description = "Map of notebook values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no notebook are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => one(v.notebook) if v.notebook != null && length(v.notebook) > 0 }
}
output "dataplex_tasks_project" {
  description = "Map of project values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no project are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dataplex_tasks_spark" {
  description = "Map of spark values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no spark are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => one(v.spark) if v.spark != null && length(v.spark) > 0 }
}
output "dataplex_tasks_state" {
  description = "Map of state values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no state are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.state if v.state != null && length(v.state) > 0 }
}
output "dataplex_tasks_task_id" {
  description = "Map of task_id values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no task_id are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.task_id if v.task_id != null && length(v.task_id) > 0 }
}
output "dataplex_tasks_terraform_labels" {
  description = "Map of terraform_labels values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no terraform_labels are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "dataplex_tasks_trigger_spec" {
  description = "Map of trigger_spec values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no trigger_spec are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => one(v.trigger_spec) if v.trigger_spec != null && length(v.trigger_spec) > 0 }
}
output "dataplex_tasks_uid" {
  description = "Map of uid values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no uid are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "dataplex_tasks_update_time" {
  description = "Map of update_time values across all dataplex_tasks, keyed the same as var.dataplex_tasks except keys with no update_time are omitted"
  value       = { for k, v in google_dataplex_task.dataplex_tasks : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}


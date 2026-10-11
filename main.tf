resource "google_dataplex_task" "dataplex_tasks" {
  for_each = var.dataplex_tasks

  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  labels          = each.value.labels
  lake            = each.value.lake
  location        = each.value.location
  project         = each.value.project
  task_id         = each.value.task_id

  execution_spec {
    args                       = each.value.execution_spec.args
    kms_key                    = each.value.execution_spec.kms_key
    max_job_execution_lifetime = each.value.execution_spec.max_job_execution_lifetime
    project                    = each.value.execution_spec.project
    service_account            = each.value.execution_spec.service_account
  }

  trigger_spec {
    disabled    = each.value.trigger_spec.disabled
    max_retries = each.value.trigger_spec.max_retries
    schedule    = each.value.trigger_spec.schedule
    start_time  = each.value.trigger_spec.start_time
    type        = each.value.trigger_spec.type
  }

  dynamic "notebook" {
    for_each = each.value.notebook != null ? [each.value.notebook] : []
    content {
      archive_uris = notebook.value.archive_uris
      file_uris    = notebook.value.file_uris
      dynamic "infrastructure_spec" {
        for_each = notebook.value.infrastructure_spec != null ? [notebook.value.infrastructure_spec] : []
        content {
          dynamic "batch" {
            for_each = infrastructure_spec.value.batch != null ? [infrastructure_spec.value.batch] : []
            content {
              executors_count     = batch.value.executors_count
              max_executors_count = batch.value.max_executors_count
            }
          }
          dynamic "container_image" {
            for_each = infrastructure_spec.value.container_image != null ? [infrastructure_spec.value.container_image] : []
            content {
              image           = container_image.value.image
              java_jars       = container_image.value.java_jars
              properties      = container_image.value.properties
              python_packages = container_image.value.python_packages
            }
          }
          dynamic "vpc_network" {
            for_each = infrastructure_spec.value.vpc_network != null ? [infrastructure_spec.value.vpc_network] : []
            content {
              network      = vpc_network.value.network
              network_tags = vpc_network.value.network_tags
              sub_network  = vpc_network.value.sub_network
            }
          }
        }
      }
      notebook = notebook.value.notebook
    }
  }

  dynamic "spark" {
    for_each = each.value.spark != null ? [each.value.spark] : []
    content {
      archive_uris = spark.value.archive_uris
      file_uris    = spark.value.file_uris
      dynamic "infrastructure_spec" {
        for_each = spark.value.infrastructure_spec != null ? [spark.value.infrastructure_spec] : []
        content {
          dynamic "batch" {
            for_each = infrastructure_spec.value.batch != null ? [infrastructure_spec.value.batch] : []
            content {
              executors_count     = batch.value.executors_count
              max_executors_count = batch.value.max_executors_count
            }
          }
          dynamic "container_image" {
            for_each = infrastructure_spec.value.container_image != null ? [infrastructure_spec.value.container_image] : []
            content {
              image           = container_image.value.image
              java_jars       = container_image.value.java_jars
              properties      = container_image.value.properties
              python_packages = container_image.value.python_packages
            }
          }
          dynamic "vpc_network" {
            for_each = infrastructure_spec.value.vpc_network != null ? [infrastructure_spec.value.vpc_network] : []
            content {
              network      = vpc_network.value.network
              network_tags = vpc_network.value.network_tags
              sub_network  = vpc_network.value.sub_network
            }
          }
        }
      }
      main_class         = spark.value.main_class
      main_jar_file_uri  = spark.value.main_jar_file_uri
      python_script_file = spark.value.python_script_file
      sql_script         = spark.value.sql_script
      sql_script_file    = spark.value.sql_script_file
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


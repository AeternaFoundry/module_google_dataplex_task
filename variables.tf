variable "dataplex_tasks" {
  description = <<EOT
Map of dataplex_tasks, attributes below
Required:
    - execution_spec (block):
        - args (optional)
        - kms_key (optional)
        - max_job_execution_lifetime (optional)
        - project (optional)
        - service_account (required)
    - trigger_spec (block):
        - disabled (optional)
        - max_retries (optional)
        - schedule (optional)
        - start_time (optional)
        - type (required)
Optional:
    - deletion_policy
    - description
    - display_name
    - labels
    - lake
    - location
    - project
    - task_id
    - notebook (block):
        - archive_uris (optional)
        - file_uris (optional)
        - infrastructure_spec (optional, block):
            - batch (optional, block):
                - executors_count (optional)
                - max_executors_count (optional)
            - container_image (optional, block):
                - image (optional)
                - java_jars (optional)
                - properties (optional)
                - python_packages (optional)
            - vpc_network (optional, block):
                - network (optional)
                - network_tags (optional)
                - sub_network (optional)
        - notebook (required)
    - spark (block):
        - archive_uris (optional)
        - file_uris (optional)
        - infrastructure_spec (optional, block):
            - batch (optional, block):
                - executors_count (optional)
                - max_executors_count (optional)
            - container_image (optional, block):
                - image (optional)
                - java_jars (optional)
                - properties (optional)
                - python_packages (optional)
            - vpc_network (optional, block):
                - network (optional)
                - network_tags (optional)
                - sub_network (optional)
        - main_class (optional)
        - main_jar_file_uri (optional)
        - python_script_file (optional)
        - sql_script (optional)
        - sql_script_file (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    labels          = optional(map(string))
    lake            = optional(string)
    location        = optional(string)
    project         = optional(string)
    task_id         = optional(string)
    execution_spec = object({
      args                       = optional(map(string))
      kms_key                    = optional(string)
      max_job_execution_lifetime = optional(string)
      project                    = optional(string)
      service_account            = string
    })
    trigger_spec = object({
      disabled    = optional(bool)
      max_retries = optional(number)
      schedule    = optional(string)
      start_time  = optional(string)
      type        = string
    })
    notebook = optional(object({
      archive_uris = optional(list(string))
      file_uris    = optional(list(string))
      infrastructure_spec = optional(object({
        batch = optional(object({
          executors_count     = optional(number)
          max_executors_count = optional(number)
        }))
        container_image = optional(object({
          image           = optional(string)
          java_jars       = optional(list(string))
          properties      = optional(map(string))
          python_packages = optional(list(string))
        }))
        vpc_network = optional(object({
          network      = optional(string)
          network_tags = optional(list(string))
          sub_network  = optional(string)
        }))
      }))
      notebook = string
    }))
    spark = optional(object({
      archive_uris = optional(list(string))
      file_uris    = optional(list(string))
      infrastructure_spec = optional(object({
        batch = optional(object({
          executors_count     = optional(number)
          max_executors_count = optional(number)
        }))
        container_image = optional(object({
          image           = optional(string)
          java_jars       = optional(list(string))
          properties      = optional(map(string))
          python_packages = optional(list(string))
        }))
        vpc_network = optional(object({
          network      = optional(string)
          network_tags = optional(list(string))
          sub_network  = optional(string)
        }))
      }))
      main_class         = optional(string)
      main_jar_file_uri  = optional(string)
      python_script_file = optional(string)
      sql_script         = optional(string)
      sql_script_file    = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


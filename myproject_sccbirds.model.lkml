connection: "sccbi-rds"

# include all the views
include: "*.view"

datagroup: myproject_sccbirds_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: myproject_sccbirds_default_datagroup

explore: sample_en {}

explore: sample_jp {}

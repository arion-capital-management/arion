view: vw_table_size {
  sql_table_name: dbo.vwTableSize ;;

  dimension: row_counts {
    type: number
    sql: ${TABLE}.RowCounts ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.SchemaName ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  dimension: total_space_kb {
    type: number
    sql: ${TABLE}.TotalSpaceKB ;;
  }

  dimension: unused_space_kb {
    type: number
    sql: ${TABLE}.UnusedSpaceKB ;;
  }

  dimension: used_space_kb {
    type: number
    sql: ${TABLE}.UsedSpaceKB ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, schema_name]
  }
}

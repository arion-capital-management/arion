view: master_controls {
  sql_table_name: dbo.master_controls ;;

  dimension: parameter_name {
    type: string
    sql: ${TABLE}.parameter_name ;;
  }

  dimension: parameter_value {
    type: number
    sql: ${TABLE}.parameter_value ;;
  }

  measure: count {
    type: count
    drill_fields: [parameter_name]
  }
}

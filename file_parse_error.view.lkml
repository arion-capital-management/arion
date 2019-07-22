view: file_parse_error {
  sql_table_name: dbo.file_parse_error ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: create_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.create_dt ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: file_key {
    type: string
    sql: ${TABLE}.file_key ;;
  }

  dimension: line_number {
    type: number
    sql: ${TABLE}.line_number ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

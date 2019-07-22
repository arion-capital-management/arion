view: error_log {
  sql_table_name: dbo.ErrorLog ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: error_data {
    type: string
    sql: ${TABLE}.ErrorData ;;
  }

  dimension: key_col {
    type: number
    sql: ${TABLE}.KeyCol ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.RunDate ;;
  }

  dimension: user {
    type: number
    sql: ${TABLE}."User" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: file_save {
  sql_table_name: dbo.file_save ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: file_key {
    type: string
    sql: ${TABLE}.file_key ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: file_path {
    type: string
    sql: ${TABLE}.file_path ;;
  }

  dimension: file_type_name {
    type: string
    sql: ${TABLE}.file_type_name ;;
  }

  dimension_group: last_touch {
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
    sql: ${TABLE}.last_touch_date ;;
  }

  dimension: last_touch_state {
    type: string
    sql: ${TABLE}.last_touch_state ;;
  }

  dimension_group: loaded_at {
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
    sql: ${TABLE}.loaded_at_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id, file_type_name, file_name]
  }
}

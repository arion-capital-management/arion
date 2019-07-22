view: activity_test1 {
  sql_table_name: dbo.ActivityTest1 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.create_date ;;
  }

  dimension: exception {
    type: string
    sql: ${TABLE}.Exception ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.Level ;;
  }

  dimension: logger {
    type: string
    sql: ${TABLE}.Logger ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.Message ;;
  }

  dimension_group: sqldate {
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
    sql: ${TABLE}.sqldate ;;
  }

  dimension: thread {
    type: string
    sql: ${TABLE}.Thread ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

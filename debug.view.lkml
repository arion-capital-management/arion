view: debug {
  sql_table_name: dbo.Debug ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: computer {
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
    sql: ${TABLE}.ComputerDate ;;
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
    sql: ${TABLE}.CreateDate ;;
  }

  dimension: link_key {
    type: string
    sql: ${TABLE}.LinkKey ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.Message ;;
  }

  dimension: program {
    type: number
    sql: ${TABLE}.Program ;;
  }

  dimension: race_key {
    type: string
    sql: ${TABLE}.RaceKey ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: yhat {
    type: number
    sql: ${TABLE}.yhat ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

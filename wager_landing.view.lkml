view: wager_landing {
  sql_table_name: dbo.wager_landing ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: bet_type {
    type: string
    sql: ${TABLE}.bet_type ;;
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

  dimension: primary_program_number {
    type: number
    sql: ${TABLE}.primary_program_number ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.probability ;;
  }

  dimension: program_number {
    type: number
    sql: ${TABLE}.program_number ;;
  }

  dimension: race_number {
    type: number
    sql: ${TABLE}.race_number ;;
  }

  dimension: track_code {
    type: string
    sql: ${TABLE}.track_code ;;
  }

  dimension: unique_amtote_id {
    type: string
    sql: ${TABLE}.unique_amtote_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

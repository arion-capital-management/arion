view: wager_state {
  sql_table_name: dbo.WagerState ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: bet_type {
    type: string
    sql: ${TABLE}.bet_type ;;
  }

  dimension: race_key {
    type: string
    sql: ${TABLE}.race_key ;;
  }

  dimension_group: time_span {
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
    sql: ${TABLE}.time_span ;;
  }

  dimension_group: time_stamp {
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
    sql: ${TABLE}.time_stamp ;;
  }

  dimension: wager_state {
    type: number
    sql: ${TABLE}.wager_state ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

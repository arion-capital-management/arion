view: vw_late_races2 {
  sql_table_name: dbo.vwLateRaces2 ;;

  dimension_group: _race_day {
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
    sql: ${TABLE}._race_day ;;
  }

  dimension: _race_number {
    type: number
    sql: ${TABLE}._race_number ;;
  }

  dimension: _track_code {
    type: string
    sql: ${TABLE}._track_code ;;
  }

  dimension: bet_error {
    type: string
    sql: ${TABLE}.BetError ;;
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

  dimension_group: date_flag {
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
    sql: ${TABLE}.DateFlag ;;
  }

  dimension: total_bet {
    type: number
    sql: ${TABLE}.TotalBet ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

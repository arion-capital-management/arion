view: vw_late_races {
  sql_table_name: dbo.vwLateRaces ;;

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

  dimension_group: date_time_bet {
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
    sql: ${TABLE}.DateTimeBet ;;
  }

  dimension_group: latch {
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
    sql: ${TABLE}.latch_time ;;
  }

  dimension: manual_or_auto {
    type: string
    sql: ${TABLE}.ManualOrAuto ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

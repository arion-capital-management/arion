view: pipeline_win {
  sql_table_name: dbo.pipeline_win ;;

  dimension: button_press {
    type: number
    sql: ${TABLE}.buttonPress ;;
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

  dimension: early_track {
    type: number
    sql: ${TABLE}.earlyTrack ;;
  }

  dimension_group: filebet_validation {
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
    sql: ${TABLE}.filebet_validation_time ;;
  }

  dimension: mtp {
    type: number
    sql: ${TABLE}.mtp ;;
  }

  dimension_group: race_day {
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
    sql: ${TABLE}.race_day ;;
  }

  dimension: race_key {
    type: string
    sql: ${TABLE}.raceKey ;;
  }

  dimension: race_number {
    type: number
    sql: ${TABLE}.race_number ;;
  }

  dimension: track_code {
    type: string
    sql: ${TABLE}.track_code ;;
  }

  dimension: wager_state {
    type: number
    sql: ${TABLE}.wagerState ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

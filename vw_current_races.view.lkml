view: vw_current_races {
  sql_table_name: dbo.vwCurrentRaces ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

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

  dimension: bet_now {
    type: number
    sql: ${TABLE}.BetNow ;;
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

  dimension_group: date_time_switched {
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
    sql: ${TABLE}.DateTimeSwitched ;;
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

  dimension: mtp {
    type: number
    sql: ${TABLE}.MTP ;;
  }

  dimension: race_day {
    type: string
    sql: ${TABLE}.race_day ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: time_diff {
    type: string
    sql: ${TABLE}.TimeDiff ;;
  }

  dimension: time_mtp {
    type: string
    sql: ${TABLE}.TimeMTP ;;
  }

  dimension: track_name {
    type: string
    sql: ${TABLE}.TRACK_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [track_name]
  }
}

view: current_races_save {
  sql_table_name: dbo.CurrentRacesSave ;;

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

  dimension: bet_on_this_race {
    type: string
    sql: ${TABLE}.BetOnThisRace ;;
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

  dimension_group: date_time_error {
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
    sql: ${TABLE}.DateTimeError ;;
  }

  dimension_group: date_time_submited {
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
    sql: ${TABLE}.DateTimeSubmited ;;
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

  dimension: rebate_pl {
    type: number
    sql: ${TABLE}.REBATE_PL ;;
  }

  dimension: rebate_sh {
    type: number
    sql: ${TABLE}.REBATE_SH ;;
  }

  dimension: rebate_wn {
    type: number
    sql: ${TABLE}.REBATE_WN ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: time_mtp0 {
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
    sql: ${TABLE}.TimeMTP0 ;;
  }

  dimension_group: time_since_mtp0 {
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
    sql: ${TABLE}.TimeSinceMTP0 ;;
  }

  dimension_group: workstation {
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
    sql: ${TABLE}.WorkstationDate ;;
  }

  dimension_group: workstation_date_submitted {
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
    sql: ${TABLE}.WorkstationDateSubmitted ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

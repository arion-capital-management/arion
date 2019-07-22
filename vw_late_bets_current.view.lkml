view: vw_late_bets_current {
  sql_table_name: dbo.vwLateBetsCurrent ;;

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

  dimension_group: bet_sent_to_amtote {
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
    sql: ${TABLE}.BetSentToAmtote ;;
  }

  dimension: diff {
    type: number
    sql: ${TABLE}.diff ;;
  }

  dimension_group: first_bet_sent {
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
    sql: ${TABLE}.FirstBetSent ;;
  }

  dimension_group: last_bet_sent {
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
    sql: ${TABLE}.LastBetSent ;;
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
    sql: ${TABLE}.LatchTime ;;
  }

  dimension_group: time_bet_sent_from_betting_program {
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
    sql: ${TABLE}.TimeBetSentFromBettingProgram ;;
  }

  dimension_group: time_button_pressed {
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
    sql: ${TABLE}.TimeButtonPressed ;;
  }

  dimension_group: time_button_pressed_at_workstation {
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
    sql: ${TABLE}.TimeButtonPressedAtWorkstation ;;
  }

  dimension: total_bet {
    type: number
    sql: ${TABLE}.TotalBet ;;
  }

  dimension_group: wager_created {
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
    sql: ${TABLE}.WagerCreated ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

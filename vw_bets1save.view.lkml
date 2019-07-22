view: vw_bets1save {
  sql_table_name: dbo.vwBets1save ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: _program_number {
    type: string
    sql: ${TABLE}._program_number ;;
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

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: amtote_status {
    type: string
    sql: ${TABLE}.AmtoteStatus ;;
  }

  dimension: bet_amount {
    type: string
    sql: ${TABLE}.BetAmount ;;
  }

  dimension: bet_details {
    type: string
    sql: ${TABLE}.BetDetails ;;
  }

  dimension: bet_error {
    type: string
    sql: ${TABLE}.BetError ;;
  }

  dimension: bet_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.BetID ;;
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

  dimension: orig_winning_amount {
    type: string
    sql: ${TABLE}.OrigWinningAmount ;;
  }

  dimension: race_number {
    type: number
    sql: ${TABLE}.RaceNumber ;;
  }

  dimension: rebate {
    type: string
    sql: ${TABLE}.Rebate ;;
  }

  dimension: refund_amount {
    type: string
    sql: ${TABLE}.refundAmount ;;
  }

  dimension_group: report {
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
    sql: ${TABLE}.ReportDate ;;
  }

  dimension: return_error {
    type: string
    sql: ${TABLE}.ReturnError ;;
  }

  dimension: return_notes {
    type: string
    sql: ${TABLE}.ReturnNotes ;;
  }

  dimension: return_status {
    type: number
    sql: ${TABLE}.ReturnStatus ;;
  }

  dimension: takeout {
    type: string
    sql: ${TABLE}.Takeout ;;
  }

  dimension: takeout_wps {
    type: number
    sql: ${TABLE}.TakeoutWPS ;;
  }

  dimension: track_code {
    type: string
    sql: ${TABLE}.TrackCode ;;
  }

  dimension: track_rebate {
    type: number
    sql: ${TABLE}.TrackRebate ;;
  }

  dimension: winning_amount {
    type: number
    sql: ${TABLE}.WinningAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [bets.id]
  }
}

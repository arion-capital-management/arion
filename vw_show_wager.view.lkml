view: vw_show_wager {
  sql_table_name: dbo.vwShowWager ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: _primary_program_number {
    type: string
    sql: ${TABLE}._primary_program_number ;;
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

  dimension: edge {
    type: number
    sql: ${TABLE}.edge ;;
  }

  dimension: model_proba {
    type: number
    sql: ${TABLE}.modelProba ;;
  }

  dimension: model_proba2nd_place {
    type: number
    sql: ${TABLE}.modelProba2ndPlace ;;
  }

  dimension: model_proba3rd_place {
    type: number
    sql: ${TABLE}.ModelProba3rdPlace ;;
  }

  dimension: model_proba_win {
    type: number
    sql: ${TABLE}.modelProbaWin ;;
  }

  dimension: pool {
    type: number
    sql: ${TABLE}.pool ;;
  }

  dimension: pooltotal {
    type: number
    sql: ${TABLE}.pooltotal ;;
  }

  dimension: rebate {
    type: number
    sql: ${TABLE}.rebate ;;
  }

  dimension: refund_amount {
    type: string
    sql: ${TABLE}.refundAmount ;;
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
    type: number
    sql: ${TABLE}.takeout ;;
  }

  dimension: total_winning_amount {
    type: string
    sql: ${TABLE}.TotalWinningAmount ;;
  }

  dimension: winning_amount {
    type: string
    sql: ${TABLE}.WinningAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [bets.id]
  }
}

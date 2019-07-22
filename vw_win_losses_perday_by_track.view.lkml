view: vw_win_losses_perday_by_track {
  sql_table_name: dbo.vwWinLossesPerdayByTrack ;;

  dimension: _track_code {
    type: string
    sql: ${TABLE}._track_code ;;
  }

  dimension: bet_amount {
    type: number
    sql: ${TABLE}.BetAmount ;;
  }

  dimension: expr1 {
    type: number
    sql: ${TABLE}.Expr1 ;;
  }

  dimension: net_won_loss {
    type: number
    sql: ${TABLE}.NetWonLoss ;;
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
    sql: ${TABLE}.RaceDay ;;
  }

  dimension: rebate {
    type: number
    sql: ${TABLE}.Rebate ;;
  }

  dimension: total_refund {
    type: string
    sql: ${TABLE}.TotalRefund ;;
  }

  dimension: win_amount {
    type: string
    sql: ${TABLE}.WinAmount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

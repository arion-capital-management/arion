view: vw_win_losses_perday_by_track_win {
  sql_table_name: dbo.vwWinLossesPerdayByTrackWin ;;

  dimension: _track_code {
    type: string
    sql: ${TABLE}._track_code ;;
  }

  dimension: bet_amount {
    type: number
    sql: ${TABLE}.BetAmount ;;
  }

  dimension: net_won_loss {
    type: number
    sql: ${TABLE}.NetWonLoss ;;
  }

  dimension: netwinloss {
    type: number
    sql: ${TABLE}.netwinloss ;;
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

  dimension: roi {
    type: number
    sql: ${TABLE}.ROI ;;
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

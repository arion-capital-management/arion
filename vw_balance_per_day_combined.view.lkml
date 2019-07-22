view: vw_balance_per_day_combined {
  sql_table_name: dbo.vwBalancePerDayCombined ;;

  dimension: balance {
    type: string
    sql: ${TABLE}.Balance ;;
  }

  dimension: bet_amount {
    type: string
    sql: ${TABLE}.BetAmount ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.Company ;;
  }

  dimension: net_win_loss {
    type: string
    sql: ${TABLE}.NetWinLoss ;;
  }

  dimension_group: race {
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
    sql: ${TABLE}.RaceDate ;;
  }

  dimension: rebate {
    type: string
    sql: ${TABLE}.rebate ;;
  }

  dimension: refund_amount {
    type: string
    sql: ${TABLE}.RefundAmount ;;
  }

  dimension: winning_amount {
    type: string
    sql: ${TABLE}.WinningAmount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: vw_running_balance_per_day_show {
  sql_table_name: dbo.vwRunningBalancePerDayShow ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: _race {
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
    sql: ${TABLE}._race_date ;;
  }

  dimension: bet_amount {
    type: number
    sql: ${TABLE}.BetAmount ;;
  }

  dimension: net_win_loss {
    type: number
    sql: ${TABLE}.NetWinLoss ;;
  }

  dimension: priorbalance {
    type: string
    sql: ${TABLE}.priorbalance ;;
  }

  dimension: race_date {
    type: string
    sql: ${TABLE}.RaceDate ;;
  }

  dimension: rebate {
    type: number
    sql: ${TABLE}.Rebate ;;
  }

  dimension: refund_amount {
    type: string
    sql: ${TABLE}.RefundAmount ;;
  }

  dimension: roi {
    type: number
    sql: ${TABLE}.ROI ;;
  }

  dimension: running_roi {
    type: string
    sql: ${TABLE}.RunningROI ;;
  }

  dimension: starting_balance {
    type: number
    sql: ${TABLE}.StartingBalance ;;
  }

  dimension: winning_amount {
    type: string
    sql: ${TABLE}.WinningAmount ;;
  }

  dimension: winning_amount_with_rebate {
    type: number
    sql: ${TABLE}.WinningAmountWithRebate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

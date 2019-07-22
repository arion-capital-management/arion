view: balance_info_place {
  sql_table_name: dbo.BalanceInfoPlace ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

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
    sql: ${TABLE}.Rebate ;;
  }

  dimension: refund_amount {
    type: string
    sql: ${TABLE}.RefundAmount ;;
  }

  dimension: roi {
    type: string
    sql: ${TABLE}.ROI ;;
  }

  dimension: winning_amount {
    type: string
    sql: ${TABLE}.WinningAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

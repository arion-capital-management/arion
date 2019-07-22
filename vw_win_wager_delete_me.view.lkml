view: vw_win_wager_delete_me {
  sql_table_name: dbo.vwWinWagerDeleteMe ;;

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

  dimension: zero_mtp_time {
    type: string
    sql: ${TABLE}.ZeroMTP_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: bets {
  sql_table_name: dbo.Bets ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: _create {
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
    sql: ${TABLE}._create_date ;;
  }

  dimension: _program_number {
    type: number
    sql: ${TABLE}._program_number ;;
  }

  dimension: _program_number2 {
    type: number
    sql: ${TABLE}._program_number2 ;;
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
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: table_id {
    type: number
    sql: ${TABLE}.table_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      vw_bets1.count,
      vw_bets1save.count,
      vw_exacta_wager.count,
      vw_exacta_wager_match_col.count,
      vw_place_wager.count,
      vw_show_wager.count,
      vw_wagers_all.count,
      vw_winwager.count
    ]
  }
}

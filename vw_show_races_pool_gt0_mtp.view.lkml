view: vw_show_races_pool_gt0_mtp {
  sql_table_name: dbo.vwShowRacesPoolGT0MTP ;;

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

  dimension: mtp {
    type: number
    sql: ${TABLE}.mtp ;;
  }

  dimension: pool {
    type: string
    sql: ${TABLE}.pool ;;
  }

  dimension: sh1_amt {
    type: string
    sql: ${TABLE}.SH1_AMT ;;
  }

  dimension: track_alias {
    type: string
    sql: ${TABLE}.TRACK_ALIAS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

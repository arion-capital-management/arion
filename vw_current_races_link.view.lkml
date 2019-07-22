view: vw_current_races_link {
  sql_table_name: dbo.vwCurrentRacesLink ;;

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

  dimension: bet_type {
    type: string
    sql: ${TABLE}.bet_type ;;
  }

  dimension: wager_id {
    type: number
    sql: ${TABLE}.wagerId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: vw_upcoming_race_summary_list {
  sql_table_name: dbo.vwUpcomingRaceSummaryList ;;

  dimension: _track_code {
    type: string
    sql: ${TABLE}._track_code ;;
  }

  dimension: races_remaining {
    type: number
    sql: ${TABLE}.RacesRemaining ;;
  }

  dimension: track_name {
    type: string
    sql: ${TABLE}.TRACK_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [track_name]
  }
}

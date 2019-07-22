view: vw_upcoming_race_summary_source {
  sql_table_name: dbo.vwUpcomingRaceSummarySource ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: _race_number {
    type: number
    sql: ${TABLE}._race_number ;;
  }

  dimension: _track_code {
    type: string
    sql: ${TABLE}._track_code ;;
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

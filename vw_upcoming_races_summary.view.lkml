view: vw_upcoming_races_summary {
  sql_table_name: dbo.vwUpcomingRacesSummary ;;

  dimension: _track_code {
    type: string
    sql: ${TABLE}._track_code ;;
  }

  dimension: key_id {
    type: number
    sql: ${TABLE}.KeyID ;;
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

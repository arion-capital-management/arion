view: vw_track_alias {
  sql_table_name: dbo.vwTrackAlias ;;

  dimension: amtote_code {
    type: string
    sql: ${TABLE}.AmtoteCode ;;
  }

  dimension: track_alias {
    type: string
    sql: ${TABLE}.TRACK_ALIAS ;;
  }

  dimension: track_alias_type {
    type: string
    sql: ${TABLE}.TRACK_ALIAS_TYPE ;;
  }

  dimension: track_code {
    type: string
    sql: ${TABLE}.TRACK_CODE ;;
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

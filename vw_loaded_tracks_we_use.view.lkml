view: vw_loaded_tracks_we_use {
  sql_table_name: dbo.vwLoadedTracksWeUse ;;

  dimension: in_table {
    type: string
    sql: ${TABLE}.InTable ;;
  }

  dimension: key_id {
    type: number
    sql: ${TABLE}.KeyID ;;
  }

  dimension: track_alias {
    type: string
    sql: ${TABLE}.TRACK_ALIAS ;;
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

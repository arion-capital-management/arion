view: vw_race_dpfor_today {
  sql_table_name: dbo.vwRaceDPForToday ;;

  dimension: track_code {
    type: string
    sql: ${TABLE}.TRACK_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

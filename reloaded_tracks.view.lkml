view: reloaded_tracks {
  sql_table_name: dbo.ReloadedTracks ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.RunDate ;;
  }

  dimension: track {
    type: string
    sql: ${TABLE}.Track ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}.Tries ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

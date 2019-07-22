view: bet_to_tech {
  sql_table_name: dbo.BetToTech ;;

  dimension: betstotechid {
    type: number
    value_format_name: id
    sql: ${TABLE}.BETSTOTECHID ;;
  }

  dimension_group: datecreated {
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
    sql: ${TABLE}.DATECREATED ;;
  }

  dimension_group: raceday {
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
    sql: ${TABLE}.RACEDAY ;;
  }

  dimension: racenumber {
    type: number
    sql: ${TABLE}.RACENUMBER ;;
  }

  dimension: techid {
    type: number
    value_format_name: id
    sql: ${TABLE}.TECHID ;;
  }

  dimension: trackcode {
    type: string
    sql: ${TABLE}.TRACKCODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

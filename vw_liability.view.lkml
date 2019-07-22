view: vw_liability {
  sql_table_name: dbo.vwLiability ;;

  dimension_group: date2 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date2 ;;
  }

  dimension: totalbreakage {
    type: string
    sql: ${TABLE}.Totalbreakage ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

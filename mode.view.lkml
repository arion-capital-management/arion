view: mode {
  sql_table_name: dbo.Mode ;;

  dimension: ex {
    type: number
    sql: ${TABLE}.EX ;;
  }

  dimension: pl {
    type: number
    sql: ${TABLE}.PL ;;
  }

  dimension: sh {
    type: number
    sql: ${TABLE}.SH ;;
  }

  dimension: tr {
    type: number
    sql: ${TABLE}.TR ;;
  }

  dimension: wn {
    type: number
    sql: ${TABLE}.WN ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

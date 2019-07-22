view: calculate_probas {
  sql_table_name: dbo.CalculateProbas ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: b_manual_betting {
    type: number
    sql: ${TABLE}.bManualBetting ;;
  }

  dimension: is_calculated {
    type: number
    sql: ${TABLE}.is_calculated ;;
  }

  dimension: proba_type {
    type: string
    sql: ${TABLE}.proba_type ;;
  }

  dimension: race_key {
    type: string
    sql: ${TABLE}.race_key ;;
  }

  dimension_group: sql_time_stamp {
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
    sql: ${TABLE}.sql_time_stamp ;;
  }

  dimension_group: sql_time_stamp_elapsed {
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
    sql: ${TABLE}.sql_time_stamp_elapsed ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

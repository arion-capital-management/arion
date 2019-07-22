view: view_1 {
  sql_table_name: dbo.View_1 ;;

  dimension: _primary_program_number {
    type: string
    sql: ${TABLE}._primary_program_number ;;
  }

  dimension: _program_number {
    type: string
    sql: ${TABLE}._program_number ;;
  }

  dimension_group: _race_day {
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
    sql: ${TABLE}._race_day ;;
  }

  dimension: _race_number {
    type: number
    sql: ${TABLE}._race_number ;;
  }

  dimension: _track_code {
    type: string
    sql: ${TABLE}._track_code ;;
  }

  dimension: model_normalized_win_proba {
    type: number
    sql: ${TABLE}.model_normalized_win_proba ;;
  }

  dimension: model_proba {
    type: number
    sql: ${TABLE}.modelProba ;;
  }

  dimension: model_win_proba {
    type: number
    sql: ${TABLE}.model_win_proba ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

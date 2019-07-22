view: logpool {
  sql_table_name: dbo."log-pool" ;;

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: _race_day {
    type: string
    sql: ${TABLE}._race_day ;;
  }

  dimension: _race_number {
    type: string
    sql: ${TABLE}._race_number ;;
  }

  dimension: _track_code {
    type: string
    sql: ${TABLE}._track_code ;;
  }

  dimension: create_date {
    type: string
    sql: ${TABLE}.create_date ;;
  }

  dimension: exception {
    type: string
    sql: ${TABLE}.exception ;;
  }

  dimension: is_after_latch {
    type: number
    sql: ${TABLE}.is_after_latch ;;
  }

  dimension: is_gross {
    type: number
    sql: ${TABLE}.is_gross ;;
  }

  dimension: mtp {
    type: string
    sql: ${TABLE}.mtp ;;
  }

  dimension: wn10_amt {
    type: string
    sql: ${TABLE}.WN10_AMT ;;
  }

  dimension: wn11_amt {
    type: string
    sql: ${TABLE}.WN11_AMT ;;
  }

  dimension: wn12_amt {
    type: string
    sql: ${TABLE}.WN12_AMT ;;
  }

  dimension: wn13_amt {
    type: string
    sql: ${TABLE}.WN13_AMT ;;
  }

  dimension: wn14_amt {
    type: string
    sql: ${TABLE}.WN14_AMT ;;
  }

  dimension: wn15_amt {
    type: string
    sql: ${TABLE}.WN15_AMT ;;
  }

  dimension: wn16_amt {
    type: string
    sql: ${TABLE}.WN16_AMT ;;
  }

  dimension: wn17_amt {
    type: string
    sql: ${TABLE}.WN17_AMT ;;
  }

  dimension: wn18_amt {
    type: string
    sql: ${TABLE}.WN18_AMT ;;
  }

  dimension: wn19_amt {
    type: string
    sql: ${TABLE}.WN19_AMT ;;
  }

  dimension: wn1_amt {
    type: string
    sql: ${TABLE}.WN1_AMT ;;
  }

  dimension: wn20_amt {
    type: string
    sql: ${TABLE}.WN20_AMT ;;
  }

  dimension: wn21_amt {
    type: string
    sql: ${TABLE}.WN21_AMT ;;
  }

  dimension: wn22_amt {
    type: string
    sql: ${TABLE}.WN22_AMT ;;
  }

  dimension: wn23_amt {
    type: string
    sql: ${TABLE}.WN23_AMT ;;
  }

  dimension: wn24_amt {
    type: string
    sql: ${TABLE}.WN24_AMT ;;
  }

  dimension: wn2_amt {
    type: string
    sql: ${TABLE}.WN2_AMT ;;
  }

  dimension: wn3_amt {
    type: string
    sql: ${TABLE}.WN3_AMT ;;
  }

  dimension: wn4_amt {
    type: string
    sql: ${TABLE}.WN4_AMT ;;
  }

  dimension: wn5_amt {
    type: string
    sql: ${TABLE}.WN5_AMT ;;
  }

  dimension: wn6_amt {
    type: string
    sql: ${TABLE}.WN6_AMT ;;
  }

  dimension: wn7_amt {
    type: string
    sql: ${TABLE}.WN7_AMT ;;
  }

  dimension: wn8_amt {
    type: string
    sql: ${TABLE}.WN8_AMT ;;
  }

  dimension: wn9_amt {
    type: string
    sql: ${TABLE}.WN9_AMT ;;
  }

  dimension: wn_total {
    type: string
    sql: ${TABLE}.WN_TOTAL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

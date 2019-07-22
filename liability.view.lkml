view: liability {
  sql_table_name: dbo.Liability ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: amount_bet_on_winner {
    type: string
    sql: ${TABLE}.amount_bet_on_winner ;;
  }

  dimension: breakage {
    type: string
    sql: ${TABLE}.breakage ;;
  }

  dimension: cmty {
    type: string
    sql: ${TABLE}.cmty ;;
  }

  dimension: combiner_cmty {
    type: string
    sql: ${TABLE}.combiner_cmty ;;
  }

  dimension: commission {
    type: string
    sql: ${TABLE}.commission ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.create_date ;;
  }

  dimension: currency_name {
    type: string
    sql: ${TABLE}.currency_name ;;
  }

  dimension: date1 {
    type: string
    sql: ${TABLE}.date1 ;;
  }

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

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: is_combiner_master {
    type: number
    sql: ${TABLE}.is_combiner_master ;;
  }

  dimension: itw_adjustment {
    type: string
    sql: ${TABLE}.itw_adjustment ;;
  }

  dimension: itw_name {
    type: string
    sql: ${TABLE}.itw_name ;;
  }

  dimension: itw_pool_code {
    type: string
    sql: ${TABLE}.itw_pool_code ;;
  }

  dimension: meet_name {
    type: string
    sql: ${TABLE}.meet_name ;;
  }

  dimension: minus_break {
    type: string
    sql: ${TABLE}.minus_break ;;
  }

  dimension: net_add_in {
    type: string
    sql: ${TABLE}.net_add_in ;;
  }

  dimension: net_carry_out {
    type: string
    sql: ${TABLE}.net_carry_out ;;
  }

  dimension: payout {
    type: string
    sql: ${TABLE}.payout ;;
  }

  dimension: pgm {
    type: string
    sql: ${TABLE}.pgm ;;
  }

  dimension: pool {
    type: string
    sql: ${TABLE}.pool ;;
  }

  dimension: priced_race {
    type: number
    sql: ${TABLE}.priced_race ;;
  }

  dimension: program_nr {
    type: number
    sql: ${TABLE}.program_nr ;;
  }

  dimension: race_defined {
    type: string
    sql: ${TABLE}.race_defined ;;
  }

  dimension: refund {
    type: string
    sql: ${TABLE}.refund ;;
  }

  dimension: refunded_sales_surcharge {
    type: string
    sql: ${TABLE}.refunded_sales_surcharge ;;
  }

  dimension: sales_surcharge {
    type: string
    sql: ${TABLE}.sales_surcharge ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: total_sales {
    type: string
    sql: ${TABLE}.total_sales ;;
  }

  measure: count {
    type: count
    drill_fields: [id, filename, itw_name, currency_name, meet_name]
  }
}

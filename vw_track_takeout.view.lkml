view: vw_track_takeout {
  sql_table_name: dbo.vwTRACK_TAKEOUT ;;

  dimension: min_bet_wps {
    type: string
    sql: ${TABLE}.MIN_BET_WPS ;;
  }

  dimension: rebate_exacta {
    type: string
    sql: ${TABLE}.REBATE_EXACTA ;;
  }

  dimension: rebate_pl {
    type: string
    sql: ${TABLE}.REBATE_PL ;;
  }

  dimension: rebate_sh {
    type: string
    sql: ${TABLE}.REBATE_SH ;;
  }

  dimension: rebate_wn {
    type: string
    sql: ${TABLE}.REBATE_WN ;;
  }

  dimension: rebate_wps {
    type: string
    sql: ${TABLE}.REBATE_WPS ;;
  }

  dimension: takeout_exacta {
    type: string
    sql: ${TABLE}.TAKEOUT_EXACTA ;;
  }

  dimension: takeout_wps {
    type: string
    sql: ${TABLE}.TAKEOUT_WPS ;;
  }

  dimension: track_code {
    type: string
    sql: ${TABLE}.TRACK_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

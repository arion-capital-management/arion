view: vw_racedp {
  sql_table_name: dbo.vwRACEDP ;;

  dimension_group: _date {
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
    sql: ${TABLE}._date ;;
  }

  dimension: _file_id {
    type: number
    sql: ${TABLE}._file_id ;;
  }

  dimension: _track {
    type: string
    sql: ${TABLE}._track ;;
  }

  dimension: age_restr {
    type: string
    sql: ${TABLE}.AGE_RESTR ;;
  }

  dimension: bet_opt {
    type: string
    sql: ${TABLE}.BET_OPT ;;
  }

  dimension: claimamt {
    type: number
    sql: ${TABLE}.CLAIMAMT ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: dist_disp {
    type: string
    sql: ${TABLE}.DIST_DISP ;;
  }

  dimension: distance {
    type: number
    sql: ${TABLE}.DISTANCE ;;
  }

  dimension: horse1 {
    type: number
    sql: ${TABLE}.HORSE1 ;;
  }

  dimension: len2_rctxt {
    type: number
    sql: ${TABLE}.LEN2_RCTXT ;;
  }

  dimension: len_racetx {
    type: number
    sql: ${TABLE}.LEN_RACETX ;;
  }

  dimension: offs_racet {
    type: number
    sql: ${TABLE}.OFFS_RACET ;;
  }

  dimension: partim {
    type: number
    sql: ${TABLE}.PARTIM ;;
  }

  dimension: pclass {
    type: number
    sql: ${TABLE}.PCLASS ;;
  }

  dimension: pds {
    type: number
    sql: ${TABLE}.PDS ;;
  }

  dimension: peps {
    type: number
    sql: ${TABLE}.PEPS ;;
  }

  dimension: pjh {
    type: number
    sql: ${TABLE}.PJH ;;
  }

  dimension: pjt {
    type: number
    sql: ${TABLE}.PJT ;;
  }

  dimension: post_time {
    type: string
    sql: ${TABLE}.POST_TIME ;;
  }

  dimension: ppace {
    type: number
    sql: ${TABLE}.PPACE ;;
  }

  dimension: pspeed {
    type: number
    sql: ${TABLE}.PSPEED ;;
  }

  dimension: pth {
    type: number
    sql: ${TABLE}.PTH ;;
  }

  dimension: purse {
    type: number
    sql: ${TABLE}.PURSE ;;
  }

  dimension: pwet {
    type: number
    sql: ${TABLE}.PWET ;;
  }

  dimension: pwork {
    type: number
    sql: ${TABLE}.PWORK ;;
  }

  dimension: race {
    type: number
    sql: ${TABLE}.RACE ;;
  }

  dimension: race_date {
    type: number
    sql: ${TABLE}.RACE_DATE ;;
  }

  dimension: raceord {
    type: number
    sql: ${TABLE}.RACEORD ;;
  }

  dimension: rd_num {
    type: number
    sql: ${TABLE}.RD_NUM ;;
  }

  dimension: rtext1 {
    type: string
    sql: ${TABLE}.RTEXT1 ;;
  }

  dimension: rtext10 {
    type: string
    sql: ${TABLE}.RTEXT10 ;;
  }

  dimension: rtext2 {
    type: string
    sql: ${TABLE}.RTEXT2 ;;
  }

  dimension: rtext3 {
    type: string
    sql: ${TABLE}.RTEXT3 ;;
  }

  dimension: rtext4 {
    type: string
    sql: ${TABLE}.RTEXT4 ;;
  }

  dimension: rtext5 {
    type: string
    sql: ${TABLE}.RTEXT5 ;;
  }

  dimension: rtext6 {
    type: string
    sql: ${TABLE}.RTEXT6 ;;
  }

  dimension: rtext7 {
    type: string
    sql: ${TABLE}.RTEXT7 ;;
  }

  dimension: rtext8 {
    type: string
    sql: ${TABLE}.RTEXT8 ;;
  }

  dimension: rtext9 {
    type: string
    sql: ${TABLE}.RTEXT9 ;;
  }

  dimension: send_track {
    type: string
    sql: ${TABLE}.SEND_TRACK ;;
  }

  dimension: stkorclm {
    type: string
    sql: ${TABLE}.STKORCLM ;;
  }

  dimension: surf_disp {
    type: string
    sql: ${TABLE}.SURF_DISP ;;
  }

  dimension: surface {
    type: string
    sql: ${TABLE}.SURFACE ;;
  }

  dimension: todays_cls {
    type: number
    sql: ${TABLE}.TODAYS_CLS ;;
  }

  dimension: track {
    type: string
    sql: ${TABLE}.TRACK ;;
  }

  dimension: track_alias {
    type: string
    sql: ${TABLE}.TRACK_ALIAS ;;
  }

  dimension: track_alias_type {
    type: string
    sql: ${TABLE}.TRACK_ALIAS_TYPE ;;
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

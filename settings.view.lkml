view: settings {
  sql_table_name: dbo.Settings ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.CompanyID ;;
  }

  dimension: exacta_is_betting {
    type: number
    sql: ${TABLE}.ExactaIsBetting ;;
  }

  dimension: place_is_betting {
    type: number
    sql: ${TABLE}.PlaceIsBetting ;;
  }

  dimension: show_is_betting {
    type: number
    sql: ${TABLE}.ShowIsBetting ;;
  }

  dimension: trifecta_is_betting {
    type: number
    sql: ${TABLE}.TrifectaIsBetting ;;
  }

  dimension: win_is_betting {
    type: number
    sql: ${TABLE}.WinIsBetting ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

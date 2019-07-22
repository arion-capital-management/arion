view: users {
  sql_table_name: dbo.Users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: admin {
    type: string
    sql: ${TABLE}.Admin ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EmailAddress ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension_group: last_eodalert_sent {
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
    sql: ${TABLE}.LastEODAlertSent ;;
  }

  dimension_group: last_loaded {
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
    sql: ${TABLE}.LastLoaded ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.Password ;;
  }

  dimension: send_late_alerts {
    type: string
    sql: ${TABLE}.SendLateAlerts ;;
  }

  dimension: technician_only {
    type: string
    sql: ${TABLE}.TechnicianOnly ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name, user_name, users_tracks.count]
  }
}

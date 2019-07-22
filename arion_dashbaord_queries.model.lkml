connection: "arion_rds"

# include all the views
include: "*.view"

datagroup: arion_dashbaord_queries_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: arion_dashbaord_queries_default_datagroup

explore: activity_test1 {}

explore: balance_info {}

explore: balance_info_exacta {}

explore: balance_info_place {}

explore: balance_info_show {}

explore: balance_info_win {}

explore: balanceinfosave {}

explore: bet_to_tech {}

explore: bets {}

explore: calculate_probas {}

explore: current_races_save {}

explore: debug {}

explore: error_log {}

explore: file {}

explore: file_parse_error {}

explore: file_save {}

explore: file_save2 {}

explore: file_save4 {}

explore: liability {}

explore: logpool {}

explore: master_controls {}

explore: mode {}

explore: pipeline_place {}

explore: pipeline_show {}

explore: pipeline_win {}

explore: race_comments_ngrams {}

explore: reloaded_tracks {}

explore: settings {}

explore: users {}

explore: users_tracks {
  join: users {
    type: left_outer
    sql_on: ${users_tracks.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: view_1 {}

explore: vw_balance_info_details_combined {}

explore: vw_balance_per_day_combined {}

explore: vw_bets1 {
  join: bets {
    type: left_outer
    sql_on: ${vw_bets1.bet_id} = ${bets.id} ;;
    relationship: many_to_one
  }
}

explore: vw_bets1save {
  join: bets {
    type: left_outer
    sql_on: ${vw_bets1save.bet_id} = ${bets.id} ;;
    relationship: many_to_one
  }
}

explore: vw_closed_races_from_yesterday {}

explore: vw_current_races {}

explore: vw_current_races_link {}

explore: vw_dashboard_races {}

explore: vw_exacta_wager {
  join: bets {
    type: left_outer
    sql_on: ${vw_exacta_wager.bet_id} = ${bets.id} ;;
    relationship: many_to_one
  }
}

explore: vw_exacta_wager_match_col {
  join: bets {
    type: left_outer
    sql_on: ${vw_exacta_wager_match_col.bet_id} = ${bets.id} ;;
    relationship: many_to_one
  }
}

explore: vw_late_bets_current {}

explore: vw_late_races {}

explore: vw_late_races2 {}

explore: vw_liability {}

explore: vw_loaded_tracks_we_use {}

explore: vw_place_wager {
  join: bets {
    type: left_outer
    sql_on: ${vw_place_wager.bet_id} = ${bets.id} ;;
    relationship: many_to_one
  }
}

explore: vw_race_dpfor_today {}

explore: vw_racedp {}

explore: vw_running_balance_per_day {}

explore: vw_running_balance_per_day_exacta {}

explore: vw_running_balance_per_day_place {}

explore: vw_running_balance_per_day_show {}

explore: vw_running_balance_per_day_win {}

explore: vw_show_races_pool_gt0_mtp {}

explore: vw_show_wager {
  join: bets {
    type: left_outer
    sql_on: ${vw_show_wager.bet_id} = ${bets.id} ;;
    relationship: many_to_one
  }
}

explore: vw_table_size {}

explore: vw_track_alias {}

explore: vw_track_takeout {}

explore: vw_upcoming_race_summary_list {}

explore: vw_upcoming_race_summary_source {}

explore: vw_upcoming_races_summary {}

explore: vw_upcomming_races {}

explore: vw_user_tracks {}

explore: vw_wagers_all {
  join: bets {
    type: left_outer
    sql_on: ${vw_wagers_all.bet_id} = ${bets.id} ;;
    relationship: many_to_one
  }
}

explore: vw_win_losses_perday_by_track {}

explore: vw_win_losses_perday_by_track_exacta {}

explore: vw_win_losses_perday_by_track_place {}

explore: vw_win_losses_perday_by_track_show {}

explore: vw_win_losses_perday_by_track_win {}

explore: vw_win_wager_delete_me {}

explore: vw_wins_losses_per_day {}

explore: vw_wins_losses_per_day_exacta {}

explore: vw_wins_losses_per_day_place {}

explore: vw_wins_losses_per_day_show {}

explore: vw_wins_losses_per_day_win {}

explore: vw_winwager {
  join: bets {
    type: left_outer
    sql_on: ${vw_winwager.bet_id} = ${bets.id} ;;
    relationship: many_to_one
  }
}

explore: wager_landing {}

explore: wager_state {}

explore: workouts_loaded {}

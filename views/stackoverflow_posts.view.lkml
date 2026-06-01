view: stackoverflow_posts {
  sql_table_name: `bigquery-public-data.stackoverflow.stackoverflow_posts` ;;

  dimension: comment_count {
    type: number
    sql: ${TABLE}.comment_count ;;
  }

  dimension: last_editor_user_id {
    type: number
    sql: ${TABLE}.last_editor_user_id ;;
  }

  dimension: owner_user_id {
    type: number
    sql: ${TABLE}.owner_user_id ;;
  }

  dimension: owner_display_name {
    type: string
    sql: ${TABLE}.owner_display_name ;;
  }

  dimension_group: last_activity_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_activity_date ;;
  }

  dimension_group: creation_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_date ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: answer_count {
    type: number
    sql: ${TABLE}.answer_count ;;
  }

  dimension_group: community_owned_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.community_owned_date ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: accepted_answer_id {
    type: number
    sql: ${TABLE}.accepted_answer_id ;;
  }

  dimension: last_editor_display_name {
    type: string
    sql: ${TABLE}.last_editor_display_name ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: post_type_id {
    type: number
    sql: ${TABLE}.post_type_id ;;
  }

  dimension: favorite_count {
    type: number
    sql: ${TABLE}.favorite_count ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: view_count {
    type: number
    sql: ${TABLE}.view_count ;;
  }

  dimension_group: last_edit_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_edit_date ;;
  }

  measure: count {
    type: count
  }
}

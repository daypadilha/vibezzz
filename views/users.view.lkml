view: users {
  sql_table_name: `bigquery-public-data.stackoverflow.users` ;;

  dimension_group: last_access_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_access_date ;;
  }

  dimension: reputation {
    type: number
    sql: ${TABLE}.reputation ;;
  }

  dimension: down_votes {
    type: number
    sql: ${TABLE}.down_votes ;;
  }

  dimension: profile_image_url {
    type: string
    sql: ${TABLE}.profile_image_url ;;
  }

  dimension_group: creation_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_date ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: about_me {
    type: string
    sql: ${TABLE}.about_me ;;
  }

  dimension: website_url {
    type: string
    sql: ${TABLE}.website_url ;;
  }

  dimension: up_votes {
    type: number
    sql: ${TABLE}.up_votes ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }

  measure: count {
    type: count
  }
}

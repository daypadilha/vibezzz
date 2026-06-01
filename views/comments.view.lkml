view: comments {
  sql_table_name: `bigquery-public-data.stackoverflow.comments` ;;

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: post_id {
    type: number
    sql: ${TABLE}.post_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension_group: creation_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_date ;;
  }

  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }

  measure: count {
    type: count
  }
}

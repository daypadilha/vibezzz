view: votes {
  sql_table_name: `bigquery-public-data.stackoverflow.votes` ;;

  dimension: vote_type_id {
    type: number
    sql: ${TABLE}.vote_type_id ;;
  }

  dimension: post_id {
    type: number
    sql: ${TABLE}.post_id ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: creation_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_date ;;
  }

  measure: count {
    type: count
  }
}

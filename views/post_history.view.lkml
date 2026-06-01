view: post_history {
  sql_table_name: `dayanepadilha-477-202302281139.stackoverflow.post_history` ;;

  dimension: post_id {
    type: number
    sql: ${TABLE}.post_id ;;
  }

  dimension: post_history_type_id {
    type: number
    sql: ${TABLE}.post_history_type_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
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

  dimension: revision_guid {
    type: string
    sql: ${TABLE}.revision_guid ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  measure: count {
    type: count
  }
}

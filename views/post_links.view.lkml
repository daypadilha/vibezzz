view: post_links {
  sql_table_name: `dayanepadilha-477-202302281139.stackoverflow.post_links` ;;

  dimension: post_id {
    type: number
    sql: ${TABLE}.post_id ;;
  }

  dimension: link_type_id {
    type: number
    sql: ${TABLE}.link_type_id ;;
  }

  dimension: related_post_id {
    type: number
    sql: ${TABLE}.related_post_id ;;
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

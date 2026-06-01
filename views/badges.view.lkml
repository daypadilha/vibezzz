view: badges {
  sql_table_name: `bigquery-public-data.stackoverflow.badges` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: tag_based {
    type: yesno
    sql: ${TABLE}.tag_based ;;
  }

  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }

  measure: count {
    type: count
  }
}

view: tags {
  sql_table_name: `bigquery-public-data.stackoverflow.tags` ;;

  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: wiki_post_id {
    type: number
    sql: ${TABLE}.wiki_post_id ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: excerpt_post_id {
    type: number
    sql: ${TABLE}.excerpt_post_id ;;
  }

  measure: count_tags {
    type: count
  }
}

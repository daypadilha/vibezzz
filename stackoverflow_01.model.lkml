connection: "bq_oficial"

include: "/views/**/*.view.lkml"

datagroup: stackoverflow_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: stackoverflow_default_datagroup

explore: users {
  label: "StackOverflow Consolidated Analysis"
  description: "Consolidated explore to analyze users, their badges, posts, comments, votes, and tags."

  join: badges {
    type: left_outer
    relationship: one_to_many
    sql_on: ${users.id} = ${badges.user_id} ;;
  }

  join: stackoverflow_posts {
    type: left_outer
    relationship: one_to_many
    sql_on: ${users.id} = ${stackoverflow_posts.owner_user_id} ;;
  }

  join: comments {
    type: left_outer
    relationship: one_to_many
    sql_on: ${stackoverflow_posts.id} = ${comments.post_id} ;;
  }

  join: votes {
    type: left_outer
    relationship: one_to_many
    sql_on: ${stackoverflow_posts.id} = ${votes.post_id} ;;
  }

  join: tags {
    type: left_outer
    relationship: one_to_many
    sql_on: ${stackoverflow_posts.id} = ${tags.wiki_post_id} ;;
  }
}

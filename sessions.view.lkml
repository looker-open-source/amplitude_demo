view: sessions {
  derived_table: {
    sortkeys: ["session_start"]
    distribution: "session_id"
    sql_trigger_value: select current_date ;;
    sql: select session_id || '-' || amplitude_id as session_id
      , amplitude_id as amplitude_id
      , session_id as session_id_start
      , count(*) as event_count
      , min(event_time) as session_start
      , max(event_time) as session_end
      , rank() over (partition by amplitude_id order by session_id) as session_index
from app131613.events

group by 1,2,3
 ;;
  }

  #### DIMENSIONS #####

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: amplitude_id {
    type: number
    sql: ${TABLE}.amplitude_id ;;
  }

  dimension: event_count {
    type: number
    sql: ${TABLE}.event_count ;;
  }

  dimension_group: session_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.session_start ;;
  }

  dimension_group: session_end {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.session_end ;;
  }

  dimension: is_bounced_session {
    type: yesno
    sql: ${event_count} = 1 ;;
  }

  dimension: session_index {
    type: number
    sql: ${TABLE}.session_index ;;
  }

  dimension: is_first_session {
    type: yesno
    sql: ${session_index} = 1 ;;
  }

  dimension: session_duration {
    type: number
    sql: DATEDIFF(minutes, ${session_start_time}::timestamp, ${session_end_time}::timestamp) ;;
    value_format_name: decimal_1
  }

  #### MEASURES ####

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: user_count {
    type: count_distinct
    sql: ${amplitude_id} ;;
    drill_fields: [amplitude_id, count]
  }

  measure: average_session_count_per_user {
    type: number
    sql: ${count}::float/NULLIF(${user_count},0) ;;
    value_format_name: decimal_1
  }

  measure: average_session_duration_minutes {
    type: average
    sql: ${session_duration} ;;
    value_format_name: decimal_1
  }

  set: detail {
    fields: [session_id, amplitude_id, event_count, session_start_date, session_end_date]
  }
}
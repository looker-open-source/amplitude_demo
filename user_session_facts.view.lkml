view: user_session_facts {
  derived_table: {
    sortkeys: ["amplitude_id"]
    distribution: "amplitude_id"
    persist_for: "12 hours"
    sql: select amplitude_id as amplitude_id
      , min(session_start) as first_session_date
      , max(session_start) as latest_session_date
      , count(*) as total_sessions
from ${sessions.SQL_TABLE_NAME} AS sessions
group by 1
 ;;
  }

  dimension: amplitude_id {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.amplitude_id ;;
  }

  dimension_group: first_session {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.first_session_date ;;
  }

  dimension_group: latest_session {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.latest_session_date ;;
  }

  dimension: total_sessions {
    type: number
    sql: ${TABLE}.total_sessions ;;
  }

  set: detail {
    fields: [amplitude_id, first_session_date, latest_session_date, total_sessions]
  }
}

- view: sessions
  derived_table:
    sortkeys: [session_start]
    distkey: session_id
    sql_trigger_value: select current_date
    sql: |
      select session_id || '-' || amplitude_id as session_id
            , amplitude_id as amplitude_id
            , session_id as session_id_start
            , count(*) as event_count
            , min(event_time) as session_start
            , max(event_time) as session_end
            , rank() over (partition by amplitude_id order by session_id) as session_index
      from app131613.events
      
      group by 1,2,3

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: session_id
    type: number
    sql: ${TABLE}.session_id

  - dimension: amplitude_id
    type: number
    sql: ${TABLE}.amplitude_id

  - dimension: event_count
    type: number
    sql: ${TABLE}.event_count

  - dimension_group: session_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.session_start

  - dimension_group: session_end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.session_end

  - dimension: is_bounced_session
    type: yesno
    sql: ${event_count} = 1
  
  - dimension: session_index
    type: int
    sql: ${TABLE}.session_index
  
  - dimension: is_first_session
    type: yesno
    sql: ${session_index} = 1

  sets:
    detail:
      - session_id
      - amplitude_id
      - event_count
      - session_start
      - session_end


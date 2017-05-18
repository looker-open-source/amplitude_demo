view: events {
  sql_table_name: app131613.events ;;

  dimension: event_id {
    hidden: yes
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: amplitude_event_type {
    hidden: yes
    sql: ${TABLE}.amplitude_event_type ;;
  }

  dimension: amplitude_id {
    type: number
    sql: ${TABLE}.amplitude_id ;;
  }

  dimension: app {
    type: number
    sql: ${TABLE}.app ;;
  }

  dimension: city {
    sql: ${TABLE}.city ;;
  }

  dimension_group: client_event {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.client_event_time ;;
  }

  dimension_group: client_upload {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.client_upload_time ;;
  }

  dimension: country {
    sql: CASE WHEN ${TABLE}.country = 'United States' THEN 'United States of America' ELSE ${TABLE}.country END ;;
  }

  dimension: device_brand {
    hidden: yes
    sql: ${TABLE}.device_brand ;;
  }

  dimension: device_carrier {
    sql: ${TABLE}.device_carrier ;;
  }

  dimension: device_family {
    sql: ${TABLE}.device_family ;;
  }

  dimension: device_id {
    sql: ${TABLE}.device_id ;;
  }

  dimension: device_manufacturer {
    hidden: yes
    sql: ${TABLE}.device_manufacturer ;;
  }

  dimension: device_model {
    sql: ${TABLE}.device_model ;;
  }

  dimension: device_type {
    sql: ${TABLE}.device_type ;;
  }

  dimension: dma {
    hidden: yes
    sql: ${TABLE}.dma ;;
  }

  dimension: event_properties {
    sql: ${TABLE}.event_properties ;;
  }

  dimension_group: event {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.event_time ;;
  }

  dimension: event_type {
    sql: ${TABLE}.event_type ;;
  }

  dimension: first_event {
    type: yesno
    sql: ${TABLE}.first_event ;;
  }

  dimension: ip_address {
    hidden: yes
    sql: ${TABLE}.ip_address ;;
  }

  dimension: language {
    sql: ${TABLE}.language ;;
  }

  dimension: location_lat {
    type: number
    hidden: yes
    sql: ${TABLE}.location_lat ;;
  }

  dimension: location_lng {
    type: number
    hidden: yes
    sql: ${TABLE}.location_lng ;;
  }

  dimension: store_location {
    type: location
    hidden: yes
    sql_latitude: ${location_lat} ;;
    sql_longitude: ${location_lng} ;;
  }

  dimension: merged_amplitude_id {
    type: number
    sql: ${TABLE}.merged_amplitude_id ;;
  }

  dimension: os_name {
    sql: ${TABLE}.os_name ;;
  }

  dimension: os_version {
    hidden: yes
    sql: ${TABLE}.os_version ;;
  }

  dimension: paying {
    sql: ${TABLE}.paying ;;
  }

  dimension: platform {
    sql: ${TABLE}.platform ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_id {
    sql: ${TABLE}.product_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: region {
    sql: ${TABLE}.region ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension_group: server_upload {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.server_upload_time ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id || '-' || ${amplitude_id} ;;
  }

  dimension_group: session_start {
    type: time
    timeframes: [time, date, week, month]
    datatype: epoch
    sql: ${TABLE}.session_id/1000 ;;
  }

  dimension: start_version {
    sql: ${TABLE}.start_version ;;
  }

  dimension_group: user_creation {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.user_creation_time ;;
  }

  dimension: user_id {
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_properties {
    sql: ${TABLE}.user_properties ;;
  }

  dimension: uuid {
    primary_key: yes
    sql: ${TABLE}.uuid ;;
  }

  dimension: version_name {
    sql: ${TABLE}.version_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_sessions {
    type: count_distinct
    sql: ${session_id} ;;
    drill_fields: [session_id, amplitude_id, count]
  }

  measure: count_users {
    type: count_distinct
    sql: ${amplitude_id} ;;
    drill_fields: [user_id, amplitude_id, count_sessions, count]
  }

  filter: event1 {
    suggest_dimension: event_type
  }

  measure: event1_session_count {
    type: number
    sql: COUNT(
        DISTINCT(
          CASE
            WHEN
            {% condition event1 %} ${event_type} {% endcondition %}
              THEN ${session_id}
            ELSE NULL END
        )
      )
       ;;
  }

  filter: event2 {
    suggest_dimension: event_type
  }

  measure: event2_session_count {
    type: number
    sql: COUNT(
        DISTINCT(
          CASE
            WHEN
            {% condition event2 %} ${event_type} {% endcondition %}
              THEN ${session_id}
            ELSE NULL END
        )
      )
       ;;
  }

  filter: event3 {
    suggest_dimension: event_type
  }

  measure: event3_session_count {
    type: number
    sql: COUNT(
        DISTINCT(
          CASE
            WHEN
            {% condition event3 %} ${event_type} {% endcondition %}
              THEN ${session_id}
            ELSE NULL END
        )
      )
       ;;
  }

  filter: event4 {
    suggest_dimension: event_type
  }

  measure: event4_session_count {
    type: number
    sql: COUNT(
        DISTINCT(
          CASE
            WHEN
            {% condition event4 %} ${event_type} {% endcondition %}
              THEN ${session_id}
            ELSE NULL END
        )
      )
       ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [event_id, version_name, os_name, amplitude_id, session_id]
  }
}
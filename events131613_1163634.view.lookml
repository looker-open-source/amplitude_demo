- view: events131613_1163634
  sql_table_name: app131613.events131613_1163634
  fields:

  - dimension: amplitude_event_type
    sql: ${TABLE}.amplitude_event_type

  - dimension: amplitude_id
    type: int
    sql: ${TABLE}.amplitude_id

  - dimension: app
    type: int
    sql: ${TABLE}.app

  - dimension: city
    sql: ${TABLE}.city

  - dimension_group: client_event
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.client_event_time

  - dimension_group: client_upload
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.client_upload_time

  - dimension: country
    sql: ${TABLE}.country

  - dimension: device_brand
    sql: ${TABLE}.device_brand

  - dimension: device_carrier
    sql: ${TABLE}.device_carrier

  - dimension: device_family
    sql: ${TABLE}.device_family

  - dimension: device_id
    sql: ${TABLE}.device_id

  - dimension: device_manufacturer
    sql: ${TABLE}.device_manufacturer

  - dimension: device_model
    sql: ${TABLE}.device_model

  - dimension: device_type
    sql: ${TABLE}.device_type

  - dimension: dma
    sql: ${TABLE}.dma

  - dimension: e_1163634_5957698
    sql: ${TABLE}.e_1163634_5957698

  - dimension: event_id
    type: int
    # hidden: true
    sql: ${TABLE}.event_id

  - dimension: event_properties
    sql: ${TABLE}.event_properties

  - dimension_group: event
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.event_time

  - dimension: event_type
    sql: ${TABLE}.event_type

  - dimension: first_event
    type: yesno
    sql: ${TABLE}.first_event

  - dimension: ip_address
    sql: ${TABLE}.ip_address

  - dimension: language
    sql: ${TABLE}.language

  - dimension: location_lat
    type: number
    sql: ${TABLE}.location_lat

  - dimension: location_lng
    type: number
    sql: ${TABLE}.location_lng

  - dimension: merged_amplitude_id
    type: int
    sql: ${TABLE}.merged_amplitude_id

  - dimension: os_name
    sql: ${TABLE}.os_name

  - dimension: os_version
    sql: ${TABLE}.os_version

  - dimension: paying
    sql: ${TABLE}.paying

  - dimension: platform
    sql: ${TABLE}.platform

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: product_id
    sql: ${TABLE}.product_id

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: region
    sql: ${TABLE}.region

  - dimension: revenue
    type: number
    sql: ${TABLE}.revenue

  - dimension_group: server_upload
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.server_upload_time

  - dimension: session_id
    type: int
    sql: ${TABLE}.session_id

  - dimension: start_version
    sql: ${TABLE}.start_version

  - dimension: u_63724
    sql: ${TABLE}.u_63724

  - dimension: u_63725
    sql: ${TABLE}.u_63725

  - dimension: u_63726
    sql: ${TABLE}.u_63726

  - dimension: u_63727
    sql: ${TABLE}.u_63727

  - dimension: u_63728
    sql: ${TABLE}.u_63728

  - dimension: u_63729
    sql: ${TABLE}.u_63729

  - dimension: u_63730
    sql: ${TABLE}.u_63730

  - dimension_group: user_creation
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.user_creation_time

  - dimension: user_id
    sql: ${TABLE}.user_id

  - dimension: user_properties
    sql: ${TABLE}.user_properties

  - dimension: uuid
    sql: ${TABLE}.uuid

  - dimension: version_name
    sql: ${TABLE}.version_name

  - measure: count
    type: count
    drill_fields: [version_name, os_name, events.event_id, events.version_name, events.os_name]


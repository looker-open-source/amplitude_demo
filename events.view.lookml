- view: events
  sql_table_name: app131613.events
  fields:

  - dimension: event_id
    primary_key: true
    type: int
    sql: ${TABLE}.event_id

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
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - event_id
    - version_name
    - os_name
    - addfriend.count
    - addtolist.count
    - completedprofile.count
    - createlist.count
    - deletelist.count
    - events131613_1163616.count
    - events131613_1163617.count
    - events131613_1163618.count
    - events131613_1163619.count
    - events131613_1163620.count
    - events131613_1163621.count
    - events131613_1163622.count
    - events131613_1163623.count
    - events131613_1163624.count
    - events131613_1163625.count
    - events131613_1163626.count
    - events131613_1163627.count
    - events131613_1163628.count
    - events131613_1163629.count
    - events131613_1163630.count
    - events131613_1163631.count
    - events131613_1163632.count
    - events131613_1163633.count
    - events131613_1163634.count
    - events131613_universal.count
    - favoritesong.count
    - joincommunity.count
    - mainlandingscreen.count
    - playfromnotification.count
    - playsong.count
    - postcommunitycomment.count
    - purchasesubscription.count
    - receivepushnotification.count
    - removefromlist.count
    - searchsong.count
    - sharesong.count
    - subscriptionlandingscreen.count
    - trialsubscription.count
    - usersignedup.count


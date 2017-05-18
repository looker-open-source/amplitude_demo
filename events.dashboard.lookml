- dashboard: events
  title: Events
  layout: tile
  tile_size: 100

  filters:

  - name: date
    title: "Date"
    type: date_filter
    default_value: 90 days

  - name: event_type
    type: field_filter
    explore: events
    field: events.event_type

  elements:

  - name: add_a_unique_name_195
    title: Total Event Count
    type: single_value
    model: amplitude
    explore: events
    measures: [events.count]
    listen:
      date: events.event_date
      event_type: events.event_type
    sorts: [events.client_event_date desc, events.event_date desc, events.count desc]
    limit: 500
    column_limit: ''
    stacking: ''
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    font_size: small
    width: 4
    height: 2

  - name: add_a_unique_name_213
    title: Total Session Count
    type: single_value
    model: amplitude
    explore: events
    measures: [events.count_sessions]
    sorts: [events.client_event_date desc, events.event_date desc, events.count_sessions desc]
    limit: 500
    listen:
      date: events.event_date
      event_type: events.event_type
    column_limit: ''
    stacking: ''
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    font_size: small
    width: 4
    height: 2

  - name: add_a_unique_name_35
    title: Total User Count
    type: single_value
    model: amplitude
    explore: events
    measures: [events.count_users]
    sorts: [events.client_event_date desc, events.event_date desc, events.count_users desc]
    limit: 500
    listen:
      date: events.event_date
      event_type: events.event_type
    column_limit: ''
    stacking: ''
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    font_size: small
    width: 4
    height: 2



  - name: add_a_unique_name_17
    title: User OS Breakdown
    type: looker_pie
    model: amplitude
    explore: events
    dimensions: [events.os_name]
    measures: [events.count_users]
    sorts: [events.count_users desc]
    limit: 500
    listen:
      date: events.event_date
      event_type: events.event_type
    column_limit: ''
    show_view_names: true
    stacking: ''
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    width: 3
    height: 3
    colors: [slategray, '#49719a', orange, navy, '#6dc2a4', '#8d9bc9']

  - name: add_a_unique_name_891
    title: User Carrier Breakdown
    type: looker_pie
    model: amplitude
    explore: events
    dimensions: [events.device_carrier]
    measures: [events.count_users]
    listen:
      date: events.event_date
      event_type: events.event_type
    sorts: [events.count_users desc]
    limit: 500
    column_limit: ''
    show_view_names: true
    stacking: ''
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    width: 3
    height: 3
    colors: [slategray, '#49719a', orange, navy, '#6dc2a4', '#8d9bc9']

  - name: add_a_unique_name_62
    title: Users by Language
    type: looker_pie
    model: amplitude
    explore: events
    dimensions: [events.language]
    measures: [events.count_users]
    listen:
      date: events.event_date
      event_type: events.event_type
    sorts: [events.client_event_date desc, events.count_users desc]
    limit: 500
    column_limit: ''
    show_view_names: true
    stacking: ''
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    width: 3
    height: 3
    colors: [slategray, '#49719a', orange, navy, '#6dc2a4', '#8d9bc9']

  - name: add_a_unique_name_613
    title: Users by Country
    type: looker_geo_choropleth
    model: amplitude
    explore: events
    dimensions: [events.country]
    measures: [events.count_users]
    listen:
      date: events.event_date
      event_type: events.event_type
    sorts: [events.count_users desc]
    limit: 500
    column_limit: ''
    show_view_names: true
    stacking: ''
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    map: world
    map_projection: ''
    quantize_colors: false
    colors: []
    loading: false
    width: 3
    height: 3

  - name: add_a_unique_name_39
    title: Daily Event Count by Version
    type: looker_line
    model: amplitude
    explore: events
    dimensions: [events.version_name, events.client_event_date]
    pivots: [events.version_name]
    measures: [events.count]
    listen:
      date: events.event_date
      event_type: events.event_type
    sorts: [events.client_event_date desc]
    limit: 500
    column_limit: ''
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    loading: false
    show_null_points: true
    map: world
    map_projection: ''
    quantize_colors: false
    y_axis_labels: [Event Count]
    point_style: none
    interpolation: linear
    colors: ['#49719a', orange, navy, '#6dc2a4', '#8d9bc9']

  - name: add_a_unique_name_744
    title: Daily Event Count by Event Type
    type: looker_line
    model: amplitude
    explore: events
    dimensions: [events.event_type, events.event_date]
    pivots: [events.event_type]
    measures: [events.count]
    listen:
      date: events.event_date
      event_type: events.event_type
    sorts: [events.client_event_date desc, events.event_date desc]
    limit: 500
    column_limit: ''
    show_view_names: true
    stacking: ''
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    show_null_points: true
    point_style: none
    interpolation: linear
    colors: [slategray, '#49719a', orange, navy, '#6dc2a4', '#8d9bc9']

- dashboard: sessions
  title: Sessions
  layout: tile
  tile_size: 100

  filters:

  - name: date
    title: "Date"
    type: date_filter
    default_value: 90 days

  - name: event_1
    type: field_filter
    explore: events
    field: events.event_type
    default_value: PlaySong

  - name: event_2
    type: field_filter
    explore: events
    field: events.event_type
    default_value: AddToList

  - name: event_3
    type: field_filter
    explore: events
    field: events.event_type
    default_value: ShareSong

  - name: event_4
    type: field_filter
    explore: events
    field: events.event_type
    default_value: PostCommunityComment

  elements:

  - name: total_session_count
    title: Total Sessions
    type: single_value
    model: amplitude
    explore: sessions
    measures: [sessions.count]
    listen:
      date: sessions.session_start_date
    sorts: [sessions.count desc]
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
    width: 3
    height: 2

  - name: distinct_users
    title: Distinct Users
    type: single_value
    model: amplitude
    explore: sessions
    measures: [sessions.user_count]
    listen:
      date: sessions.session_start_date
    sorts: [sessions.user_count desc]
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
    width: 3
    height: 2

  - name: avg_sessions_per_user
    title: Average Sessions per User
    type: single_value
    model: amplitude
    explore: sessions
    measures: [sessions.average_session_count_per_user]
    listen:
      date: sessions.session_start_date
    sorts: [sessions.average_session_count_per_user desc]
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
    width: 3
    height: 2

  - name: avg_session_duration
    title: Average Session Duration (Minutes)
    type: single_value
    model: amplitude
    explore: sessions
    measures: [sessions.average_session_duration_minutes]
    listen:
      date: sessions.session_start_date
    sorts: [sessions.average_session_duration desc, sessions.average_session_duration_minutes desc]
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
    width: 3
    height: 2

  - name: daily_session_count_bounced
    title: Daily Session Count
    type: looker_area
    model: amplitude
    explore: sessions
    dimensions: [sessions.session_start_date, sessions.is_bounced_session]
    pivots: [sessions.is_bounced_session]
    measures: [sessions.count]
    listen:
      date: sessions.session_start_date
    sorts: [sessions.session_start_date]
    limit: 500
    column_limit: ''
    stacking: normal
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
    font_size: medium
    show_null_points: true
    series_labels:
      'No': Not Bounced
      'Yes': Bounced
    series_colors:
      'Yes': orange
      'No': slategray
    point_style: none
    interpolation: linear
    width: 8

  - name: bounced_session_percentage
    title: Bounced Session Percentage
    type: looker_pie
    model: amplitude
    explore: sessions
    dimensions: [sessions.is_bounced_session]
    measures: [sessions.count]
    listen:
      date: sessions.session_start_date
    sorts: [sessions.count desc]
    limit: 500
    column_limit: ''
    show_view_names: true
    show_null_labels: false
    series_labels:
      'No': Not Bounced
      'Yes': Bounced
    stacking: normal
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
    font_size: medium
    show_null_points: true
    series_colors:
      'No': slategray
      'Yes': orange
    width: 4

  - name: daily_session_cnt_new
    title: Daily Session Count by New vs. Returning Users
    type: looker_area
    model: amplitude
    explore: sessions
    dimensions: [sessions.is_first_session, sessions.session_start_date]
    pivots: [sessions.is_first_session]
    measures: [sessions.count]
    listen:
      date: sessions.session_start_date
    sorts: [sessions.count desc 1]
    limit: 500
    column_limit: ''
    show_view_names: true
    show_null_labels: false
    series_labels:
      'No': Returning User
      'Yes': New User
    stacking: normal
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
    font_size: medium
    show_null_points: true
    series_colors:
      'No': slategray
      'Yes': '#49719a'
    point_style: none
    interpolation: linear
    width: 8


  - name: new_user_percentage
    title: New User Percentage
    type: looker_pie
    model: amplitude
    explore: sessions
    dimensions: [sessions.is_first_session]
    measures: [sessions.count]
    listen:
      date: sessions.session_start_date
    sorts: [sessions.count desc]
    limit: 500
    column_limit: ''
    show_view_names: true
    show_null_labels: false
    series_labels:
      'No': Returning User
      'Yes': New User
    stacking: normal
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
    font_size: medium
    show_null_points: true
    series_colors:
      'No': slategray
      'Yes': '#49719a'
    width: 4

  - name: custom_funnel
    title: Custom Funnel
    type: looker_column
    model: amplitude
    explore: events
    measures: [events.event1_session_count, events.event2_session_count, events.event3_session_count,
      events.event4_session_count]
    listen:
      date: events.event_date
      event_1: events.event1
      event_2: events.event2
      event_3: events.event3
      event_4: events.event4
    sorts: [events.event1_session_count desc]
    limit: 500
    column_limit: ''
    stacking: ''
    show_value_labels: true
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    y_axis_combined: true
    show_dropoff: true
    colors: [slategray, '#49719a', orange, '#6dc2a4']
    width: 12

  - name: add_a_unique_name_580
    title: User Cohorts
    type: looker_area
    model: amplitude
    explore: sessions
    dimensions: [user_session_facts.first_session_week, sessions.session_start_week]
    pivots: [user_session_facts.first_session_week]
    measures: [sessions.count]
    filters:
      sessions.session_start_week: 6 weeks ago for 6 weeks
      user_session_facts.first_session_week: 6 weeks ago for 6 weeks
    sorts: [sessions.session_start_week, user_session_facts.first_session_week]
    limit: 500
    column_limit: ''
    stacking: normal
    show_value_labels: false
    label_density: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_labels: [Session Count]
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: true
    show_null_labels: false
    colors: [slategray, '#49719a', orange, navy, '#6dc2a4', '#8d9bc9']
    point_style: none
    interpolation: linear
    width: 12

  - name: add_a_unique_name_592
    title: User Cohorts Table
    type: table
    model: amplitude
    explore: sessions
    dimensions: [user_session_facts.first_session_week, sessions.session_start_week]
    pivots: [user_session_facts.first_session_week]
    measures: [sessions.count]
    filters:
      sessions.session_start_week: 6 weeks ago for 6 weeks
      user_session_facts.first_session_week: 6 weeks ago for 6 weeks
    sorts: [sessions.session_start_week, user_session_facts.first_session_week]
    limit: 500
    column_limit: ''
    width: 12
    height: 3

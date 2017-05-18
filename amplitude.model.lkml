connection: "amplitude"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: events {}

explore: sessions {
  join: user_session_facts {
    foreign_key: amplitude_id
  }
}

- connection: amplitude

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: events

- explore: sessions
  joins: 
    - join: user_session_facts
      foreign_key: amplitude_id

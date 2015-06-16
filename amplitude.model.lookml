- connection: amplitude

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: events

- explore: sessions
  joins: 
    - join: user_session_facts
      foreign_key: amplitude_id

# - explore: addfriend

#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: addtolist
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: completedprofile
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: createlist
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: deletelist
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 

# 
# - explore: events131613_1163616
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163617
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163618
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163619
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163620
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163621
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163622
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163623
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163624
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163625
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163626
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163627
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163628
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163629
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163630
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163631
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163632
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163633
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_1163634
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: events131613_universal
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: favoritesong
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: joincommunity
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: mainlandingscreen
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: playfromnotification
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: playsong
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: postcommunitycomment
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: purchasesubscription
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: receivepushnotification
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: removefromlist
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: searchsong
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: sharesong
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: subscriptionlandingscreen
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: trialsubscription
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 
# - explore: usersignedup
#   joins:
#     - join: events
#       foreign_key: event_id
# 
# 

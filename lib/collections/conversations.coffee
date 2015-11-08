@Conversations = new Mongo.Collection('conversations')

schema = new SimpleSchema
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> if @isUpdate then return new Date()
    denyInsert: true
    optional: true
Conversations.attachSchema(schema)

Conversations.allow
  insert: (userId, doc)-> false
  update: (userId, doc)-> false
  remove: ()-> false

Conversations.deny
  # may only edit the following fields:
  update: (userId, doc, fieldNames) -> _.without(fieldNames, 'text').length > 0
  insert: (userId, doc, fieldNames) -> _.without(fieldNames, 'text').length > 0

# seeder = ->
#   Matches.insert(
#     userId:

#   )
# Meteor.methods

@Matches = new Mongo.Collection('matches')

schema = new SimpleSchema
  userId:
    type: String
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> if @isUpdate then return new Date()
    denyInsert: true
    optional: true
Matches.attachSchema(schema)

Matches.allow
  insert: (userId, answer)-> false
  update: (userId, answer)-> false
  remove: ()-> false

Matches.deny
  # may only edit the following fields:
  update: (userId, answer, fieldNames) -> _.without(fieldNames, 'text').length > 0
  insert: (userId, answer, fieldNames) -> _.without(fieldNames, 'text').length > 0

# seeder = ->
#   Matches.insert(
#     userId:

#   )
# Meteor.methods

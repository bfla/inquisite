@Questions = new Mongo.Collection('questions')

schema = new SimpleSchema
  text:
    type: String
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> if @isUpdate then return new Date()
Questions.attachSchema(schema)

Questions.allow
  insert: (userId, answer)-> true
  update: (userId, answer)-> true
  remove: ()-> true

Questions.deny
  # may only edit the following fields:
  update: (userId, answer, fieldNames) -> _.without(fieldNames, 'text').length > 0
  insert: (userId, answer, fieldNames) -> _.without(fieldNames, 'text').length > 0

# Meteor.methods

@Questions = new Mongo.Collection('questions')

schema = new SimpleSchema
  userId:
    type: String
  text:
    type: String
  createdAt:
    type: Date
    defaultValue: new Date()
  updatedAt:
    type: Date
    autoValue: -> if @isUpdate then return new Date()
    denyInsert: true
    optional: true
Questions.attachSchema(schema)

Questions.allow
  insert: (userId, doc)-> Permissions.ownsDoc(userId: userId, doc: doc)
  update: (userId, doc)-> true
  remove: ()-> true

Questions.deny
  # may only edit the following fields:
  update: (userId, doc, fieldNames) -> _.without(fieldNames, 'text').length > 0
  insert: (userId, doc, fieldNames) -> _.without(fieldNames, 'text').length > 0

# Meteor.methods

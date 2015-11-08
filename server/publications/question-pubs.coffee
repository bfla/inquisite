Meteor.publish 'questions', ->
  return Questions.find()

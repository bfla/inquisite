@Permissions = {}

#check that the userId specified owns the documents
Permissions.ownsDoc = (params)->
  return params.doc and params.doc.userId is params.userId

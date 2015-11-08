@ConversationsList = React.createClass(
  mixins: [ReactMeteorData]

  getMeteorData: ->
   conversations: Conversations.find().fetch()

  renderConversations: ->
    _.map @data.conversations, (conversation) -> 
      return <ConversationItem key={conversation._id} conversation={conversation} />
  
  render: ->
    <div>
      <Chevrons link1='/matcher'/>
      <p className='lead text-center'>conversations will go here</p>
      { @renderConversations() }
    </div>
)
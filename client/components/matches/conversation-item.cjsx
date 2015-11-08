@ConversationItem = React.createClass(
  
  propTypes:
    conversation: React.PropTypes.object.isRequired

  render: ->
    <p> {@props.conversation.createdAt} </p>
)
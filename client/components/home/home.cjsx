@Home = React.createClass(

  getInitialState: -> return {}

  render: ->
    if Meteor.user()?
      <Matcher />
    else
      <Splash />
)
Meteor.startup ->
  #Use Meteor.startup to render the component after the page is ready
  # React.render( <App />, document.getElementById("react-app") )
  React.render( <Router />, document.getElementById('react-app') )
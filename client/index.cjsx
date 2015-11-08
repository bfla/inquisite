
renderReact = -> React.render( <Router />, document.getElementById('react-app') )

Meteor.startup -> renderReact()



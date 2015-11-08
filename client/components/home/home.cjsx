@Home = React.createClass(

  mixins: [ReactMeteorData],
  getMeteorData: ->
    currentUser: Meteor.user()

  render: ->
    # if (this.data.todoListLoading) {
    #     return <LoadingSpinner />;
    #   }
    if @data.currentUser?
      return <Matcher/>
    else
      return <Splash />
)
@App = React.createClass(
  mixins: [ReactMeteorData]
  getMeteorData: ->
    currentUser: Meteor.user()

  getInitialState: ->
    loading: false
  
  # renderQuestions: ->
  #   _.map @data.questions, (question) -> 
  #     <ShowQuestion 
  #       key={question._id}
  #       question={question}
  #     />

  # componentWillMount: ->
    # @state.loading = true if Meteor.loggingIn
    # @history.pushState(null, '/') unless @data.currentUser?

    # Meteor.onLogin () => 
    #   @render() if @state.loading
    #   @state.loading = false

  render: ->
    <div className="container-fluid">
      <div className="row">
        <div className="col-sm-12 col-md-4 col-md-offset-4 app-content-container">
          {this.props.children}
        </div>
      </div>
    </div>
)
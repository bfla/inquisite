@App = React.createClass(
  # mixins: [ReactMeteorData]
  # getMeteorData: ->
  #   questions: Questions.find().fetch() 

  getInitialState: -> return {}
  
  # renderQuestions: ->
  #   _.map @data.questions, (question) -> 
  #     <ShowQuestion 
  #       key={question._id}
  #       question={question}
  #     />

  render: ->
    <div className="container-fluid">
      <div className="row">
        <div className="col-sm-4 col-sm-offset-4 app-content-container">
          {this.props.children}
        </div>
      </div>
    </div>
)
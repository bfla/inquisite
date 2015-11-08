@CreateQuestion = React.createClass(

  mixins: [ReactMeteorData]
  
  getMeteorData: ->
    currentUser: Meteor.user()

  getInitialState: -> return {}
  
  handleSubmit: (e)->
    e.preventDefault()
    # Find the text field via the React ref
    question =
      userId: @data.currentUser._id
      text: React.findDOMNode(@refs.textInput).value.trim()
    Questions.insert(question, @submitCallback)
  
  submitCallback: (err, res) ->
    return console.log(err)  if err?
    console.log('created question:', res)
  
  render: ->
    <div>
      <Chevrons link1='/matcher' link2='/matcher' />
      <p class='lead text-center'>Ask a question</p>
      <form className="create-question form" onSubmit={this.handleSubmit} >
        <textarea
          ref="textInput"
          placeholder="Type to add new question"
          className="form-control"
        >
        </textarea>
        <p className="text-center">
          <button type='submit' className="btn btn-primary btn-translucent">
            Ask
          </button>
        </p>
      </form>
    </div>
)
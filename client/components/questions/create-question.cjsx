@CreateQuestion = React.createClass(

  getInitialState: -> return {}
  
  handleSubmit: (e)->
    e.preventDefault()
    # Find the text field via the React ref
    question =
      text: React.findDOMNode(@refs.textInput).value.trim()
    Questions.insert(question, @submitCallback)
  
  submitCallback: (err, res) ->
    return console.log(err)  if err?
    console.log('created question:', res)
  
  render: ->
    <form className="create-question form" onSubmit={this.handleSubmit} >
      <textarea
        ref="textInput"
        placeholder="Type to add new question"
        className="form-control"
      >
      </textarea>
      <p className="text-center">
        <button type='submit' className="btn btn-primary">
          Save
        </button>
      </p>
    </form>
)
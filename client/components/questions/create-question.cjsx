@CreateQuestion = React.createClass(
  
  handleSubmit: (e)->
    e.preventDefault()
    # Find the text field via the React ref
    question =
      text: React.findDOMNode(@refs.textInput).value.trim()
    Questions.insert(question, @submitCallback)
  
  submitCallback: (err, res) ->
    return console.log(err)  if err?
    console.log(res)
  
  render: ->
    <form className="create-question" onSubmit={this.handleSubmit} >
      <textarea
        ref="textInput"
        placeholder="Type to add new question"
        className="form-control"
      >
      </textarea>
    </form>
)
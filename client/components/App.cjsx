@App = React.createClass(
  mixins: [ReactMeteorData]
  getMeteorData: ->
    questions: Questions.find().fetch() 
  render: ->
    <div className="container">
      <header>
        <h1>Todo List</h1>
      </header>
      <div>
        <CreateQuestion />
      </div>
    </div>
)
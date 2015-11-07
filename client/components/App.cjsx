@App = React.createClass(
  
  mixins: [ReactMeteorData]
 
  render: ->
    <div className="container">
      <header>
        <h1>Todo List</h1>
      </header>
      <ul>
      </ul>
    </div>
)
@Matcher = React.createClass(

  mixins: [ReactMeteorData]
  
  getMeteorData: ->
    users: Meteor.users.find().fetch()
    matches: Matches.find().fetch()
    questions: Questions.find().fetch()

  getInitialState: -> 
    return {}

  accept: -> return

  reject: -> return

  renderCard: ->
    user = _.first(@data.users)
    question = _.first(@data.questions)
    console.log 'user', user
    return (
      <div>
        <img 
          className="img-responsive img-circle img-matcher" 
          src="https://graph.facebook.com/#{user.services.facebook.id}/picture?type=normal"
        />
        <p className="text-center"> {user.services.facebook.first_name} </p>
        <p className="text-center"> {question.text}</p>
      </div>
    )

  render: ->
    <div className='matcher-container'>
      <h1 className="text-center"> Hello I am the matcher component </h1>
      {@renderCard()}
      <p className='text-center'>
        <i 
          className='fa fa-check-circle-o matcher-control' 
          onClick={this.accept}
        />
        &nbsp;
        <i 
          className='fa fa-times-circle-o matcher-control'
          onClick={this.reject}
        />
      </p>
    </div>
)
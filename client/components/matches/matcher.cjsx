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
    question = @data.questions.findOne(userId: user._id)
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
      <p className='text-center'>
        <Link to={'/createQuestion'}>
          <i className='fa fa-chevron-left matcher-control'/>
        </Link>
        &nbsp;
        <Link to={'/createQuestion'}>
          <i className='fa fa-chevron-right matcher-control' />
        </Link>
      </p>
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
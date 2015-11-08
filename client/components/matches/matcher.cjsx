@Matcher = React.createClass(

  mixins: [ReactMeteorData]
  
  getMeteorData: ->
    users: Meteor.users.find().fetch()
    questions: Questions.find({}, {sort: {createdAt: -1}}).fetch()

  getInitialState: -> 
    return {}

  accept: -> return

  reject: -> return

  renderCard: ->
    user = _.first(@data.users)
    question = _.findWhere(@data.questions, {userId: user._id})
    console.log 'user', user
    if user and question
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
    else
      return <span>No data!</span>

  render: ->
    <div className='matcher-container'>
      <Chevrons link1='/createQuestion' link2='/conversations' />
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
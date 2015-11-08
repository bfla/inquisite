@Matcher = React.createClass(

  mixins: [ReactMeteorData]
  
  getMeteorData: ->
    users: Meteor.users.find().fetch()
    matches: Matches.find().fetch()

  getInitialState: -> 
    return {}

  accept: -> return

  reject: -> return

  renderMatch: ->
    user = _.first(@data.users)
    console.log 'user', user
    return (
      <div>
        <img 
          className="img img-round" 
          src="https://graph.facebook.com/#{user.services.facebook.id}/picture?type=normal"
        />
        <p> {user.services.facebook.first_name} </p>
      </div>
    )

  render: ->
    <div className='matcher-container'>
      <h1> Hello I am the matcher component </h1>
      {@renderMatch()}
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
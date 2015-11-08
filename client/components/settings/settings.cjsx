@Settings = React.createClass(

  mixins: [ReactMeteorData]

  getMeteorData: ->
    currentUser: Meteor.user()

  signout: (e) ->
    e.preventDefault()
    Meteor.logout (err, res) => 
      return console.log(err)  if err?
      # @history.pushState(null, '/')

  deleteAccount: (e) ->
    Meteor.users().remove(_id: @data.currentUser._id)

  render: ->
    <div>
      <Chevrons link2='/createQuestion' />
      <p className='lead text-center'>Account</p>
      <p className='text-center'>
        <button 
          className='btn btn-default btn-lg btn-translucent'
          onClick={@signout}
        >
          Sign Out
        </button>
      </p>
      <hr/>
      <p className='lead text-center'>Danger Zone!</p>
      <p className='text-center'>
        <button 
          className='btn btn-default btn-bar btn-translucent' 
          onClick={@deleteAccount}
        >
          Delete Account
        </button>
      </p>
    </div>
)
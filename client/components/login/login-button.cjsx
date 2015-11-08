@LoginButton = React.createClass(
  
  login: (e) -> 
    e.preventDefault()
    Accounts.loginWithFacebook()

  render: ->
    <button className='btn btn-default btn-translucent' onClick={this.login} >
      <i className='fa fa-facebook'/>
      &nbsp;
      Sign in with Facebook
    </button>
)
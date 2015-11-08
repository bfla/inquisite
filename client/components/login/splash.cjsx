@Splash = React.createClass({

  getInitialState: -> return {}

  render: ->
    <div className='splash-container'>
      <h1 className='text-center splash-heading'>
        inquisite
      </h1>
      <p className='lead text-center splash-subtitle'>
        intelligent conversations with people nearby
      </p>
      <p className='text-center'>
        <LoginButton />
      </p>
    </div>
})
@Matcher = React.createClass(

  mixins: [ReactMeteorData]
  
  getMeteorData: ->
    matches: Matches.find().fetch()

  getInitialState: -> return {}

  accept: -> return

  reject: -> return

  render: ->
    <div className='matcher-container'>
      <h1> Hello I am the matcher component </h1>
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
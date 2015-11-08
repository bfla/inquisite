@Chevrons = React.createClass(

  propTypes:
    link1: React.PropTypes.string
    link2: React.PropTypes.string

  renderFirstLink: ->
    if @props.link1?
      <Link to={@props.link1}>
        <i className='fa fa-chevron-left nav-chevron nav-chevron-left'/>
      </Link>
    else
      <span></span>

  renderSecondLink: -> 
    if @props.link2?
      <Link to={@props.link2}>
        <i className='fa fa-chevron-right nav-chevron nav-chevron-right' />
      </Link>
    else
      <span></span>

  render: ->
    <p>
      {@renderFirstLink()}
      &nbsp;
      {@renderSecondLink()}
    </p>
)
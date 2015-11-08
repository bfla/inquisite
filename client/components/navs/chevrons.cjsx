@Chevrons = React.createClass(

  propTypes:
    link1: React.PropTypes.string.isRequired
    link2: React.PropTypes.string.isRequired

  render: ->
    <p className='text-center'>
      <Link to={@props.link1}>
        <i className='fa fa-chevron-left matcher-control'/>
      </Link>
      &nbsp;
      <Link to={@props.link2}>
        <i className='fa fa-chevron-right matcher-control' />
      </Link>
    </p>
)
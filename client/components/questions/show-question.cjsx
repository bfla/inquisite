@ShowQuestion = React.createClass(
  propTypes:
    question: React.PropTypes.object.isRequired
  render: -> <div>{@props.question.text}</div>
)
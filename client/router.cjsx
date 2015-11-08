{  Router, Route, Link } = ReactRouter
history = ReactRouter.history.useQueries(ReactRouter.history.createHistory)()

@Link = Link

@Router = React.createClass(
  
  getInitialState: -> return {}
  
  render: -> 
    <Router history={history}>
      <Route component={App}>
        <Route path='/' component={Home}/>
        <Route path='splash' component={Splash}/>
        <Route path='matcher' component={Matcher}/>
        <Route path='createQuestion' component={CreateQuestion}/>
      </Route>
    </Router>
)

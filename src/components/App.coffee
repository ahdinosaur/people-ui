# @cjsx React.DOM

React = require('react')
Fluxxor = require('fluxxor')

People = require('./People.coffee')

FluxMixin = Fluxxor.FluxMixin(React)
StoreWatchMixin = Fluxxor.StoreWatchMixin

module.exports = React.createClass
  mixins: [FluxMixin, StoreWatchMixin("People")]

  getStateFromFlux: ->
    flux = this.getFlux()
    console.log(flux.store("People").people)
    return people: flux.store("People").people

  render: ->
    return (
      <div>
        <People people={this.state.people} />
      </div>
    )
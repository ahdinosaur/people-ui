# @cjsx React.DOM

debug = require('debug')("people-ui:components:App")
React = require('react')
Fluxxor = require('fluxxor')

People = require('./People.coffee')

FluxMixin = Fluxxor.FluxMixin(React)
StoreWatchMixin = Fluxxor.StoreWatchMixin

module.exports = React.createClass
  mixins: [FluxMixin, StoreWatchMixin("People")]

  getStateFromFlux: ->
    flux = this.getFlux()
    state = people: flux.store("People").people

    debug("getStateFromFlux", state)

    return state

  render: ->
    debug("render'ing App", @state)

    return (
      <div>
        <People people={@state.people} />
      </div>
    )
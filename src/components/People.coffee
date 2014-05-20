# @cjsx React.DOM

debug = require('debug')("people-ui:components:People")
React = require('react')
Fluxxor = require('fluxxor')
uuid = require('node-uuid')
_ = require('lodash')

Person = require('./Person.coffee')

FluxChildMixin = require('fluxxor').FluxChildMixin(React)

module.exports = React.createClass
  mixins: [FluxChildMixin]

  render: ->
    console.log(@props.people)

    return (
      <div>
        <button onClick={@add}>
          +
        </button>
        <ul>
          {_.map(@props.people, (person, id) ->
            return (
              <li key={id}>
                <Person person={person} />
              </li>
            )
          )}
        </ul>
      </div>
    )

  add: (ev) ->
    person = id: uuid()

    debug("add'ing person", person)

    @getFlux().actions.create(person)
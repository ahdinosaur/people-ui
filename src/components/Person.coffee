# @cjsx React.DOM

debug = require('debug')("people-ui:components:Person")
React = require('react')
Fluxxor = require('fluxxor')
ReactForms = require('react-forms')

FluxChildMixin = Fluxxor.FluxChildMixin(React)
Form = ReactForms.Form
Schema = ReactForms.schema.Schema
Property = ReactForms.schema.Property

PersonSchema = (
  <Schema>
    <Property name="name" label="Name" />
    <Property name="age" type="number" label="Age" />
  </Schema>
)

module.exports = React.createClass
  mixins: [FluxChildMixin]

  render: ->
    debug("render'ing Person", @props.person)

    return (
      <div>
        <button
          className="delete"
          onClick={@delete}
          >
            x
        </button>
        <Form
          value={@props.person}
          schema={PersonSchema}
          onChange={@update}
        />
      </div>
    )

  update: (person) ->
    debug("update'ing person", person)
    @getFlux().actions.update(person)

  delete: (ev) ->
    person = @props.person
    debug("delete'ing person", person)
    @getFlux().actions.delete(person)
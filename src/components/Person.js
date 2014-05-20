/** @jsx React.DOM */

var React = require('react');
var Fluxxor = require('fluxxor');
var ReactForms = require('react-forms');

var FluxChildMixin = Fluxxor.FluxChildMixin(React);
var Form = ReactForms.Form;
var Schema = ReactForms.schema.Schema;
var Property = ReactForms.schema.Property;

var PersonSchema = (
  <Schema>
    <Property name="name" label="Name" />
    <Property name="age" type="number" label="Age" />
  </Schema>
);

module.exports = React.createClass({
  mixins: [FluxChildMixin],

  render: function () {
    console.log(this.props.person);
    return (
      <div>
        <button
          className="delete"
          onClick={this.delete}
          >
            x
        </button>
        <Form
          value={this.props.person}
          schema={PersonSchema}
          onChange={this.update}
        />
      </div>
    );
  },

  update: function (person) {
    this.getFlux().actions.update(person);
  },

  delete: function (event) {
    this.getFlux().actions.delete(this.props.person);
  },
})
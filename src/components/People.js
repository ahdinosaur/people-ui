/** @jsx React.DOM */

var debug = require('debug')("people-ui:components:People");
var React = require('react');
var Fluxxor = require('fluxxor');
var uuid = require('node-uuid');
var _ = require('lodash');

var Person = require('./Person');

var FluxChildMixin = require('fluxxor').FluxChildMixin(React);

module.exports = React.createClass({
  mixins: [FluxChildMixin],

  render: function () {
    console.log(this.props.people);

    return (
      <div>
        <button onClick={this.add}>+</button>
        <ul>
          {_.map(this.props.people, function (person, id) {
            return (
              <li key={id}>
                <Person person={person} />
              </li>
            );
          })}
        </ul>
      </div>
    );
  },

  add: function (event) {
    var person = {
      id: uuid(),
    };

    debug("CREATEing person", person);

    this.getFlux().actions.create(person);
  },

});

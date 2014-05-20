/** @jsx React.DOM */

var React = require('react');
var Fluxxor = require('fluxxor');

var People = require('./People');

var FluxMixin = Fluxxor.FluxMixin(React);
var StoreWatchMixin = Fluxxor.StoreWatchMixin;

module.exports = React.createClass({
  mixins: [FluxMixin, StoreWatchMixin("People")],

  getStateFromFlux: function () {
    var flux = this.getFlux();
    console.log(flux.store("People").people);
    return {
      people: flux.store("People").people,
    };
  },

  render: function () {
    return (
      <div>
        <People people={this.state.people} />
      </div>
    );
  },

});
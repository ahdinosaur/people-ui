var debug = require('debug')("people-ui:stores:People");
var Fluxxor = require('fluxxor');

module.exports = Fluxxor.createStore({
  actions: {
    "CREATE_PERSON": "onCreate",
    "UPDATE_PERSON": "onUpdate",
    "DELETE_PERSON": "onDelete",
  },

  initialize: function () {
    this.people = {};
  },

  onCreate: function (person) {
    debug("onCreate", person);
    this.people[person.id] = person;
    this.emit("change");
  },

  onUpdate: function (person) {
    debug("onUpdate", person);
    this.people[person.id] = person;
    this.emit("change");
  },

  onDelete: function (person) {
    debug("onDelete", person);
    delete this.people[person.id];
    this.emit("change");
  },
});
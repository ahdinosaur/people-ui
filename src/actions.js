var debug = require('debug')("people-ui:actions")

module.exports = {
  create: function (person) {
    debug("dispatch CREATE_PERSON", person);
    this.dispatch("CREATE_PERSON", person);
  },
  update: function (person) {
    debug("dispatch UPDATE_PERSON", person);
    this.dispatch("UPDATE_PERSON", person);
  },
  delete: function (person) {
    debug("dispatch DELETE_PERSON", person);
    this.dispatch("DELETE_PERSON", person);
  },
};
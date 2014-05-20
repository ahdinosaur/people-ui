debug = require('debug')("people-ui:stores:People")
Fluxxor = require('fluxxor')

module.exports = Fluxxor.createStore
  actions:
    "CREATE_PERSON": "onCreate",
    "UPDATE_PERSON": "onUpdate",
    "DELETE_PERSON": "onDelete",

  initialize: ->
    @people = {}

  onCreate: (person) ->
    debug("onCreate", person)
    @people[person.id] = person
    @emit("change")

  onUpdate: (person) ->
    debug("onUpdate", person)
    @people[person.id] = person
    @emit("change")

  onDelete: (person) ->
    debug("onDelete", person)
    delete @people[person.id]
    @emit("change")
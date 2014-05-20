debug = require('debug')("people-ui:actions")

module.exports =

  create: (person) ->
    debug("dispatch CREATE_PERSON", person)
    @dispatch("CREATE_PERSON", person)

  update: (person) ->
    debug("dispatch UPDATE_PERSON", person)
    @dispatch("UPDATE_PERSON", person)

  delete: (person) ->
    debug("dispatch DELETE_PERSON", person)
    @dispatch("DELETE_PERSON", person)
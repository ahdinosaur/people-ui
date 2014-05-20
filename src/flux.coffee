Fluxxor = require('fluxxor')

stores = require('./stores/index.coffee')
actions = require('./actions.coffee')

module.exports = new Fluxxor.Flux(stores, actions)
# @cjsx React.DOM

React = require('react')

flux = require('./flux.coffee')
App = require('./components/App.coffee')

require('./index.css')

if process.env.NODE_ENV isnt 'production'
  require('debug').enable("*")

if not document.querySelector('main')
  mainEl = document.createElement("main")
  document.body.appendChild(mainEl)

React.renderComponent(
  <App flux={flux} />
  document.querySelector('main')
)
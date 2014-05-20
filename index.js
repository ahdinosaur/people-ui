/** @jsx React.DOM */

var React = require('react');

require('./index.css');

if (process.env.NODE_ENV !== 'production') {
  require('debug').enable("*");
}

var flux = require('./src/flux');
var App = require('./src/components/App');

React.renderComponent(
  <App flux={flux} />,
  document.querySelector('main')
  );
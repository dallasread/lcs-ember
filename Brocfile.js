/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp();
app.import("vendor/firebase.js")

module.exports = app.toTree();

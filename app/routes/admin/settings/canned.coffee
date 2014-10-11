`import Ember from 'ember';`

CannedRoute = Ember.Route.extend
	model: ->
		@store.findAll "canned"

`export default CannedRoute`
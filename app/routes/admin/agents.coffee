`import Ember from 'ember';`

AgentsRoute = Ember.Route.extend
	model: ->
		@store.findAll "agent"

`export default AgentsRoute`
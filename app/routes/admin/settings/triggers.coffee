`import Ember from 'ember';`

TriggersRoute = Ember.Route.extend
	model: ->
		@store.findAll "trigger"

`export default TriggersRoute`
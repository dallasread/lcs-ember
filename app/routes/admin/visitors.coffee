`import Ember from 'ember';`

VisitorsRoute = Ember.Route.extend
	model: ->
		@store.findAll "visitor"

`export default VisitorsRoute`
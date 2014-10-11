`import Ember from 'ember';`

IntroducersRoute = Ember.Route.extend
	model: ->
		@store.findAll "introducer"

`export default IntroducersRoute`
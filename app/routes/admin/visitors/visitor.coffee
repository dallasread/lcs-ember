`import Ember from 'ember';`

VisitorRoute = Ember.Route.extend
	setupController: (controller, song) ->
	    controller.set "model", song

`export default VisitorRoute`
`import Ember from 'ember';`

Router = Ember.Router.extend()
#	location: "none"

Router.map ->
	@route "admin", ->
		@route "visitors"
		@route "agents"
		@route "profile"
		@route "upgrade"
		@route "setup"
		
		@route "settings", ->
			@route "triggers"
			@route "canned"
			@route "introducer"
			@route "surveys"

`export default Router;`

`import Ember from 'ember';`

Router = Ember.Router.extend()
#	location: "none"

Router.map ->
	@route "chatbox"

	@route "admin", ->
		@route "visitors", ->
			@route "visitor",
				path: ":visitor_id"
				
		@route "agents"
		@route "profile"
		@route "upgrade"
		@route "setup"
		
		@route "settings", ->
			@route "triggers"
			@route "canned"
			@route "introducers"

`export default Router;`

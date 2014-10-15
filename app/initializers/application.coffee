ApplicationInitializer =
	name: "login"
	after: "store"
	initialize: (container, app) ->
		lcs = $("script[data-lcs]").data("lcs")
		fb = new Firebase("https://lcs2.firebaseio.com/#{lcs}/")
		
		app.deferReadiness()
		
		$("<link rel=\"stylesheet\" href=\"assets/lively.css\">").appendTo "body"
		
		# fb.onAuth (auth) ->
		# 	if auth
		# 		app.router.send "admin"
		# 	else
		# 		container.transitionTo "admin"
		
		Ember.run app, app.advanceReadiness

`export default ApplicationInitializer`

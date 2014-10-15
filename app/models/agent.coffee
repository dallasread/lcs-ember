`import Ember from 'ember';`

Agent = DS.Model.extend
	name: DS.attr "string"
	email: DS.attr "string"
	visitors: DS.hasMany "visitor",
		async: true
	online: DS.attr "boolean"
	offline: (->
		!@get("online")
  ).property("online")

`export default Agent`